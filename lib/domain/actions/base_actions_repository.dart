import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/domain/posts/post.dart';

abstract class BaseActionsRepository {
  Future<void> followUser(String toBeFollowedUserId, String currentUserId);
  Future<void> addView(String postId, String currentUserId);
  Future<void> likePost(String toBeLikedPostId, String currentUserId);
  Future<void> unLikePost(String toBeUnLikedPostId, String currentUserId);
  Future<void> unFollowUser(String toBeUnFollowedUserId, String currentUserId);
  Future<void> addComment(
      String commentMessage, String postId, String currentUserId);

  Stream<User?> getUser(String userID);
  Stream<Post?> getPost(String postID);
}
