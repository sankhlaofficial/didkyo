import 'package:didkyo/domain/auth/user.dart' as user;
import 'package:didkyo/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainX on User {
  user.User toDomain() {
    return user.User(
        id: UniqueId.fromUniqueString(this.uid),
        emailAddress: this.email,
        photoUrl: this.photoURL,
        displayName: this.displayName);
  }

  static Map<String, dynamic> userToMap(user.User targetUser) {
    return {
      'userID': targetUser.id,
      'userName': targetUser.displayName,
      'userEmail': targetUser.emailAddress,
      'userPicture': targetUser.photoUrl
    };
  }
}
