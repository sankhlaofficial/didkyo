import 'dart:developer';

import 'package:didkyo/domain/auth/user.dart' as user;
import 'package:didkyo/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainX on User {
  user.User toDomain() {
    log("Running FirebaseUserDomainX to domain");
    return user.User(
        id: UniqueId.fromUniqueString(this.uid),
        emailAddress: this.email,
        photoUrl: this.photoURL,
        displayName: this.displayName,
        following: [],
        followers: [],
        pushToken: '');
  }

  static Map<String, dynamic> userToMap(user.User targetUser) {
    return {
      'userID': targetUser.id,
      'userName': targetUser.displayName,
      'userEmail': targetUser.emailAddress,
      'userPicture': targetUser.photoUrl,
      'userFollowers': targetUser.followers,
      'userFollowing': targetUser.following,
      'pushToken': targetUser.pushToken
    };
  }

  static user.User mapToUser(Map<dynamic, dynamic>? mapUser) {
    return user.User(
        id: UniqueId.fromUniqueString(mapUser!['id']),
        emailAddress: mapUser['emailAddress'],
        displayName: mapUser['displayName'],
        photoUrl: mapUser['photoUrl'],
        followers: mapUser['followers'],
        following: mapUser['following'],
        pushToken: mapUser['pushToken']);
  }
}
