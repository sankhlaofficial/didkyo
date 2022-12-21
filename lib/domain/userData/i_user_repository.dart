abstract class IUserRepository {
  Future<void> createNewUser(
      String emailAddress, String displayName, String photoUrl, String id);
}
