import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:didkyo/domain/auth/auth_failure.dart';
import 'package:didkyo/domain/auth/i_auth_facade.dart';
import 'package:didkyo/domain/auth/user.dart' as user;
import 'package:didkyo/domain/auth/value_objects.dart';
import 'package:didkyo/infrastructure/auth/firebase_user_mapper.dart';
import 'package:didkyo/infrastructure/notifications/notificiations_repository.dart';
import 'package:didkyo/infrastructure/userData/userData_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  static const String anonymousPicture =
      "https://lh3.googleusercontent.com/a/AEdFTp69jiElLVkaMRHhmR4epb-oohbtEgIqghsEcmFmWw=s96-c";
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;
  @factoryMethod
  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn,
      this._firebaseFirestore, this._firebaseStorage);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final String emailAddressString = emailAddress.getOrCrash();
    final String passwordString = password.getOrCrash();

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressString, password: passwordString);

      try {
        await UserDataRepository(_firebaseFirestore, _firebaseStorage)
            .createNewUser(
                emailAddressString,
                emailAddressString,
                anonymousPicture,
                _firebaseAuth.currentUser?.uid,
                '',
                [],
                [],
                '');
      } catch (error) {
        log(error.toString());
      }

      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final String emailAddressString = emailAddress.getOrCrash();
    final String passwordString = password.getOrCrash();

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressString, password: passwordString);

      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
          idToken: googleAuthentication.idToken,
          accessToken: googleAuthentication.accessToken);

      return _firebaseAuth
          .signInWithCredential(authCredential)
          .then((value) => right(unit));
      //ToDo: Replace with FirebaseException
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<user.User>> getSignedInUser() async {
    if (_firebaseAuth.currentUser?.photoURL != null &&
        _firebaseAuth.currentUser?.displayName != null) {
      final user = await getCurrentUser();

      log('current user' + user.toString());

      if (user == null) {
        try {
          log("making user as new");

          String? pushToken = await NotificationsRepository.getFCMToken();

          await UserDataRepository(_firebaseFirestore, _firebaseStorage)
              .createNewUser(
                  _firebaseAuth.currentUser?.email,
                  _firebaseAuth.currentUser?.displayName,
                  _firebaseAuth.currentUser?.photoURL,
                  _firebaseAuth.currentUser?.uid,
                  pushToken,
                  [],
                  [],
                  '');
        } catch (error) {
          log(error.toString());
        }
      } else {
        try {
          log("filling old user again");

          await UserDataRepository(_firebaseFirestore, _firebaseStorage)
              .createNewUser(
                  _firebaseAuth.currentUser?.email,
                  user.displayName,
                  user.photoUrl,
                  _firebaseAuth.currentUser?.uid,
                  user.pushToken,
                  user.followers,
                  user.following,
                  user.bio);
        } catch (error) {
          log(error.toString());
        }
      }
    } else {
      try {
        log("making user as new else");
        String? pushToken = await NotificationsRepository.getFCMToken();
        final user = await getCurrentUser();
        if (user == null) {
          await UserDataRepository(_firebaseFirestore, _firebaseStorage)
              .createNewUser(
                  _firebaseAuth.currentUser?.email,
                  _firebaseAuth.currentUser?.email,
                  anonymousPicture,
                  _firebaseAuth.currentUser?.uid,
                  pushToken,
                  user.followers,
                  user.following,
                  user.bio);
        } else {
          log('donuing something');
          await UserDataRepository(_firebaseFirestore, _firebaseStorage)
              .createNewUser(
                  _firebaseAuth.currentUser?.email,
                  user.displayName,
                  user.photoUrl,
                  _firebaseAuth.currentUser?.uid,
                  pushToken,
                  user.followers,
                  user.following,
                  user.bio);
        }
      } catch (error) {
        log(error.toString());
      }
    }

    return optionOf(_firebaseAuth.currentUser?.toDomain());
  }

  @override
  Future<void> signOut() =>
      Future.wait([_googleSignIn.signOut(), _firebaseAuth.signOut()]);

  @override
  Future<user.User> getCurrentUser() async {
    // if (_firebaseAuth.currentUser?.photoURL != null &&
    //     _firebaseAuth.currentUser?.displayName != null) {
    //   try {
    //     await UserDataRepository(_firebaseFirestore, _firebaseStorage)
    //         .createNewUser(
    //             _firebaseAuth.currentUser?.email,
    //             _firebaseAuth.currentUser?.displayName,
    //             _firebaseAuth.currentUser?.photoURL,
    //             _firebaseAuth.currentUser?.uid);
    //   } catch (error) {
    //     log(error.toString());
    //   }
    // } else {
    //   try {
    //     await UserDataRepository(_firebaseFirestore, _firebaseStorage)
    //         .createNewUser(
    //             _firebaseAuth.currentUser?.email,
    //             _firebaseAuth.currentUser?.email,
    //             anonymousPicture,
    //             _firebaseAuth.currentUser?.uid);
    //   } catch (error) {
    //     log(error.toString());
    //   }
    // }
    return UserDataRepository(_firebaseFirestore, _firebaseStorage)
        .fetchUser(_firebaseAuth.currentUser!.uid);
  }
}
