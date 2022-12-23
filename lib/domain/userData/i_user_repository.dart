import 'package:didkyo/domain/auth/user.dart';

abstract class IUserRepository {
  Future<void> createNewUser(
      String emailAddress, String displayName, String photoUrl, String id);
  Future<void> updateUser(User user);
}
