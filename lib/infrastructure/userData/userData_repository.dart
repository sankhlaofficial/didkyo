import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/domain/userData/i_user_repository.dart';
import 'package:didkyo/infrastructure/userData/user_dto.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepository)
class UserDataRepository implements IUserRepository {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;

  UserDataRepository(this._firebaseFirestore, this._firebaseStorage);

  @override
  Future<void> createNewUser(
      String? emailAddress,
      String? displayName,
      String? photoUrl,
      String? id,
      String? pushToken,
      List<dynamic>? followers,
      List<dynamic>? following) async {
    await _firebaseFirestore.collection('users').doc(id).set({
      'id': id,
      'emailAddress': emailAddress,
      'displayName': displayName,
      'photoUrl': photoUrl,
      'followers': followers,
      'following': following,
      'pushToken': pushToken
    });
  }

  @override
  Future<void> updateUser(User user) async {
    final userDTO = UserDTO.fromDomain(user);

    final userID = userDTO.id;
    log(userID);
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
    log("running fetch ser");
    final userData = await _firebaseFirestore
        .collection('users')
        .doc(userId)
        .get()
        .then((DocumentSnapshot doc) {
      final data = doc.data() as Map<String, dynamic>;
      return UserDTO.toDomain(data);
    }).catchError((error) {
      log('fetch error' + error.toString());
    });
    log(userData.toString());

    return userData;
  }
}
