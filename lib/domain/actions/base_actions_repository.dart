import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/domain/posts/post.dart';

abstract class BaseActionsRepository {
  Future<void> followUser(String toBeFollowedUserId, String currentUserId);
  Future<void> addView(
      {required String postId,
      required String postUserId,
      required String currentUserId});
  Future<void> likePost(
      {required String toBeLikedPostId,
      required String postUserId,
      required String currentUserId});
  Future<void> unLikePost(
      {required String toBeUnLikedPostId,
      required String postUserId,
      required String currentUserId});
  Future<void> unFollowUser(String toBeUnFollowedUserId, String currentUserId);
  Future<void> addComment(
      {required String commentMessage,
      required String postUserId,
      required String postId,
      required String currentUserId});

  Stream<User?> getUser(String userID);
  Stream<Post?> getPost(String postID);
}
