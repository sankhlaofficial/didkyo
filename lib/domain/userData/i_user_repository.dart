import 'package:didkyo/domain/auth/user.dart';

abstract class IUserRepository {
  Future<void> createNewUser(
      String emailAddress,
      String displayName,
      String photoUrl,
      String id,
      String pushToken,
      List<dynamic> followers,
      List<dynamic> following,
      String bio);
  Future<void> updateUser(User user);
  Future<User> fetchUser(String userId);
}
