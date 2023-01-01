import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:didkyo/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String? pushToken,
    required UniqueId? id,
    required String? displayName,
    required String? emailAddress,
    required String? photoUrl,
    required String? bio,
    required List<dynamic>? followers,
    required List<dynamic>? following,
  }) = _User;

  static User fromSnapshot(DocumentSnapshot snapshot) {
    log("snapshot is  " + snapshot.id.toString());
    User user = User(
        id: UniqueId.fromUniqueString(snapshot.id),
        emailAddress: snapshot['emailAddress'],
        photoUrl: snapshot['photoUrl'],
        displayName: snapshot['displayName'],
        followers: snapshot['followers'],
        following: snapshot['following'],
        pushToken: snapshot['pushToken'],
        bio: snapshot['bio']);

    return user;
  }
}
