abstract class BaseActionsRepository {
  Future<void> followUser(String toBeFollowedUserId, String currentUserId);
  Future<void> unFollowUser(String toBeUnFollowedUserId, String currentUserId);
}
