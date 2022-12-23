import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:didkyo/domain/auth/i_auth_facade.dart';
import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/domain/core/errors.dart';
import 'package:didkyo/domain/userData/i_user_repository.dart';
import 'package:didkyo/infrastructure/userData/user_dto.dart';
import 'package:didkyo/injection.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepository)
class UserDataRepository implements IUserRepository {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;

  UserDataRepository(this._firebaseFirestore, this._firebaseStorage);

  @override
  Future<void> createNewUser(String? emailAddress, String? displayName,
      String? photoUrl, String? id) async {
    await _firebaseFirestore.collection('users').doc(id).set({
      'id': id,
      'emailAddress': emailAddress,
      'displayName': displayName,
      'photoUrl': photoUrl
    });
  }

  @override
  Future<void> updateUser(User user) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();

    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    final userID = user.id!.getOrCrash();

    final userDTO = UserDTO.fromDomain(user);

    try {
      final fileName = File(user.photoUrl!);
      bool doesFileExist = await fileName.exists();

      doesFileExist
          ? await _firebaseStorage
              .ref(
                  'users/${user.id!.getOrCrash()}/ profilePictures/${user.photoUrl}')
              .putFile(fileName)
              .then((p) async {
              String downloadURL = await _firebaseStorage
                  .ref(
                      'users/${user.id!.getOrCrash()}/ profilePictures/${user.photoUrl}')
                  .getDownloadURL();
              await _firebaseFirestore
                  .collection('users')
                  .doc(userDTO.id)
                  .update(userDTO.copyWith(photoUrl: downloadURL).toJson());
            })
          : await _firebaseFirestore
              .collection('users')
              .doc(userDTO.id)
              .update(userDTO.toJson());
    } catch (error) {
      log(error.toString());
    }
  }

  @override
  Future<User> fetchUser(String userId) async {
    final userData = await _firebaseFirestore
        .collection('users')
        .doc(userId)
        .get()
        .then((DocumentSnapshot doc) {
      final data = doc.data() as Map<String, dynamic>;
      return UserDTO.toDomain(data);
      ;
    }).catchError((error) {
      log(error.toString());
    });
    log(userData.toString());

    return userData;
  }
}
