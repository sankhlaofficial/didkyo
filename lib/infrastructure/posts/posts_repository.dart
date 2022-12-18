import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:didkyo/domain/posts/i_post_repository.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/domain/posts/post_failure.dart';
import 'package:didkyo/infrastructure/core/firestore_helpers.dart';
import 'package:didkyo/infrastructure/posts/post_dtos.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IPostRepository)
class PostRepository implements IPostRepository {
  final FirebaseFirestore _firebaseFirestore;

  PostRepository(this._firebaseFirestore);
  @override
  Stream<Either<PostFailure, List<Post>>> watchUserAllPosts() async* {
    final userDoc = await _firebaseFirestore.userDocument();
    yield* userDoc.postsCollection
        // .orderBy('postDateTime', descending: true)
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
      final userDoc = await _firebaseFirestore.userDocument();
      final postDTO = PostDTO.fromDomain(post);
      await userDoc.postsCollection.doc(postDTO.postID).set(postDTO.toJson());
      return right(unit);
    } on PlatformException catch (e) {
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
      await userDoc.postsCollection
          .doc(postDTO.postID)
          .update(postDTO.toJson());
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
}
