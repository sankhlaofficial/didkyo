import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:didkyo/domain/actions/base_actions_repository.dart';
import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/domain/core/value_objects.dart';
import 'package:didkyo/domain/posts/comment.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/domain/posts/value_objects.dart';
import 'package:didkyo/infrastructure/posts/post_dtos.dart';

class ActionsRepository extends BaseActionsRepository {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  @override
  Future<void> followUser(
      String toBeFollowedUserId, String currentUserId) async {
    await _firebaseFirestore
        .collection('users')
        .doc(toBeFollowedUserId)
        .update({
      'followers': FieldValue.arrayUnion([currentUserId])
    }).then((value) async {
      await _firebaseFirestore.collection('users').doc(currentUserId).update({
        'following': FieldValue.arrayUnion([toBeFollowedUserId])
      });
    });
  }

  @override
  Future<void> unFollowUser(
      String toBeUnFollowedUserId, String currentUserId) async {
    await _firebaseFirestore
        .collection('users')
        .doc(toBeUnFollowedUserId)
        .update({
      'followers': FieldValue.arrayRemove([currentUserId])
    }).then((value) async {
      await _firebaseFirestore.collection('users').doc(currentUserId).update({
        'following': FieldValue.arrayRemove([toBeUnFollowedUserId])
      });
    });
  }

  @override
  Stream<User?> getUser(String userID) {
    log("Getting user");
    return _firebaseFirestore
        .collection("users")
        .doc(userID)
        .snapshots()
        .map((snap) => User.fromSnapshot(snap));
  }

  @override
  Stream<Post?> getPost(String postID) {
    log("Getting post");
    return _firebaseFirestore
        .collection("globalPosts")
        .doc(postID)
        .snapshots()
        .map((snap) => PostDTO.fromFirestore(snap).toDomain());
  }

  @override
  Future<void> likePost(String toBeLikedPostId, String currentUserId) async {
    await _firebaseFirestore
        .collection('globalPosts')
        .doc(toBeLikedPostId)
        .update({
      'postLikes': FieldValue.arrayUnion([currentUserId])
    }).then((value) async {
      await _firebaseFirestore
          .collection('users')
          .doc(currentUserId)
          .collection('posts')
          .doc(toBeLikedPostId)
          .update({
        'postLikes': FieldValue.arrayUnion([currentUserId])
      });
    });
  }

  @override
  Future<void> unLikePost(
      String toBeUnLikedPostId, String currentUserId) async {
    await _firebaseFirestore
        .collection('globalPosts')
        .doc(toBeUnLikedPostId)
        .update({
      'postLikes': FieldValue.arrayRemove([currentUserId])
    }).then((value) async {
      await _firebaseFirestore
          .collection('users')
          .doc(currentUserId)
          .collection('posts')
          .doc(toBeUnLikedPostId)
          .update({
        'postLikes': FieldValue.arrayRemove([currentUserId])
      });
    });
  }

  @override
  Future<void> addComment(
      String commentMessage, String currentUserId, String postId) async {
    final comment = PostComment(
        commentID: UniqueId(),
        commentMessage: PostCommentMessage(commentMessage),
        commentDateTime: DateTime.now(),
        commentUserId: currentUserId,
        commentLikes: [],
        commentReplies: []);

    final commentDTO = CommentDTO.fromDomain(comment).toJson();

    await _firebaseFirestore.collection('globalPosts').doc(postId).update({
      'postComments': FieldValue.arrayUnion([commentDTO])
    });
  }
}
