import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:didkyo/domain/auth/i_auth_facade.dart';
import 'package:didkyo/domain/core/errors.dart';
import 'package:didkyo/domain/posts/i_post_repository.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/domain/posts/post_failure.dart';
import 'package:didkyo/infrastructure/core/firestore_helpers.dart';
import 'package:didkyo/infrastructure/posts/post_dtos.dart';
import 'package:didkyo/injection.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IPostRepository)
class PostRepository implements IPostRepository {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;

  PostRepository(this._firebaseFirestore, this._firebaseStorage);
  @override
  Stream<Either<PostFailure, List<Post>>> watchUserAllPosts() async* {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      yield* userDoc.postsCollection
          .orderBy('postDateTime', descending: true)
          .snapshots()
          .map((snapshot) => right<PostFailure, List<Post>>(snapshot.docs
              .map((doc) => PostDTO.fromFirestore(doc).toDomain())
              .toList()))
          .onErrorReturnWith((error) {
        log("There is an error 1");
        log(error.toString());
        if (error is PlatformException &&
            error.message!.contains('PERMISSION_DENIED')) {
          return left(const PostFailure.permissionDenied());
        }
        return left(const PostFailure.unexpected());
      });
    } catch (error) {
      log(error.toString());
    }
  }

  @override
  Stream<Either<PostFailure, List<Post>>> watchUserLocationSpecificPosts(
      String selectedLocation) async* {
    final userDoc = await _firebaseFirestore.userDocument();
    yield* userDoc.postsCollection
        .orderBy('postDateTime', descending: true)
        .snapshots()
        .map(
          (snapshot) =>
              snapshot.docs.map((doc) => PostDTO.fromFirestore(doc).toDomain()),
        )
        .map<Either<PostFailure, List<Post>>>((event) => right(event
            .where((element) =>
                element.postLocation.getOrCrash() == selectedLocation)
            .toList()))
        .onErrorReturnWith((error) {
      if (error is PlatformException &&
          error.message!.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.permissionDenied());
      }
      return left(const PostFailure.unexpected());
    });
  }

  @override
  Future<Either<PostFailure, Unit>> createPost(Post post) async {
    try {
      final userOption = await getIt<IAuthFacade>().getSignedInUser();
      final user = userOption.getOrElse(() => throw NotAuthenticatedError());
      final userDoc = await _firebaseFirestore.userDocument();
      final postDTO = PostDTO.fromDomain(post);
      final fileName = File(post.postImage.getOrCrash());
      bool doesFileExist = await fileName.exists();
      doesFileExist
          ? await _firebaseStorage
              .ref(
                  'users/${user.id!.getOrCrash()}/${post.postLocation.getOrCrash()}')
              .putFile(fileName)
              .then((p) async {
              String downloadURL = await _firebaseStorage
                  .ref(
                      'users/${user.id!.getOrCrash()}/${post.postLocation.getOrCrash()}')
                  .getDownloadURL();
              await _firebaseFirestore
                  .collection('globalPosts')
                  .doc(postDTO.postID)
                  .set(postDTO
                      .copyWith(
                          postImageURL: downloadURL,
                          postUser: {
                            'id': user.id!.getOrCrash(),
                            'emailAddress': user.emailAddress,
                            'photoUrl': user.photoUrl,
                            'displayName': user.displayName
                          },
                          postDateTime: DateTime.now())
                      .toJson())
                  .whenComplete(() async {
                await userDoc.postsCollection
                    .doc(postDTO.postID)
                    .set(postDTO
                        .copyWith(
                            postImageURL: downloadURL,
                            postUser: {
                              'id': user.id!.getOrCrash(),
                              'emailAddress': user.emailAddress,
                              'photoUrl': user.photoUrl,
                              'displayName': user.displayName
                            },
                            postDateTime: DateTime.now())
                        .toJson())
                    .whenComplete(() async {
                  await _firebaseFirestore
                      .collection('analytics')
                      .doc('places')
                      .update({postDTO.postLocation: FieldValue.increment(1)});
                });
              });
            })
          : await userDoc.postsCollection
              .doc(postDTO.postID)
              .set(postDTO.copyWith(postUser: {
                'id': user.id!.getOrCrash(),
                'emailAddress': user.emailAddress,
                'photoUrl': user.photoUrl,
                'displayName': user.displayName
              }, postDateTime: DateTime.now()).toJson())
              .whenComplete(() async {
              await _firebaseFirestore
                  .collection('globalPosts')
                  .doc(postDTO.postID)
                  .set(postDTO.copyWith(postUser: {
                    'id': user.id!.getOrCrash(),
                    'emailAddress': user.emailAddress,
                    'photoUrl': user.photoUrl,
                    'displayName': user.displayName
                  }, postDateTime: DateTime.now()).toJson())
                  .whenComplete(() async {
                await _firebaseFirestore
                    .collection('analytics')
                    .doc('places')
                    .update({postDTO.postLocation: FieldValue.increment(1)});
              });
            });

      return right(unit);
    } on PlatformException catch (e) {
      log(e.toString());
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.permissionDenied());
      }
      return left(const PostFailure.unexpected());
    }
  }

  @override
  Future<Either<PostFailure, Unit>> deletePost(Post post) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      final postID = post.postID.getOrCrash();
      await userDoc.postsCollection.doc(postID).delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.permissionDenied());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const PostFailure.unableToUpdate());
      }
      return left(const PostFailure.unexpected());
    }
  }

  @override
  Future<Either<PostFailure, Unit>> updatePost(Post post) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      final postDTO = PostDTO.fromDomain(post);
      final userOption = await getIt<IAuthFacade>().getSignedInUser();
      final user = userOption.getOrElse(() => throw NotAuthenticatedError());
      try {
        final fileName = File(post.postImage.getOrCrash());
        bool doesFileExist = await fileName.exists();

        doesFileExist
            ? await _firebaseStorage
                .ref(
                    'users/${user.id!.getOrCrash()}/${post.postLocation.getOrCrash()}')
                .putFile(fileName)
                .then((p) async {
                String downloadURL = await _firebaseStorage
                    .ref(
                        'users/${user.id!.getOrCrash()}/${post.postLocation.getOrCrash()}')
                    .getDownloadURL();
                await userDoc.postsCollection.doc(postDTO.postID).update(
                    postDTO.copyWith(postImageURL: downloadURL).toJson());
              })
            : await userDoc.postsCollection
                .doc(postDTO.postID)
                .update(postDTO.toJson());
      } catch (error) {
        log(error.toString());
      }

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.permissionDenied());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const PostFailure.unableToUpdate());
      }
      return left(const PostFailure.unexpected());
    }
  }

  @override
  Stream<Either<PostFailure, List<Post>>> watchGlobalPosts() async* {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      yield* _firebaseFirestore
          .collection('globalPosts')
          .orderBy('postDateTime', descending: true)
          .snapshots()
          .map((snapshot) => right<PostFailure, List<Post>>(snapshot.docs
              .map((doc) => PostDTO.fromFirestore(doc).toDomain())
              .toList()))
          .onErrorReturnWith((error) {
        log("There is an error 1");
        log(error.toString());
        if (error is PlatformException &&
            error.message!.contains('PERMISSION_DENIED')) {
          return left(const PostFailure.permissionDenied());
        }
        return left(const PostFailure.unexpected());
      });
    } catch (error) {
      log(error.toString());
    }
  }
}
