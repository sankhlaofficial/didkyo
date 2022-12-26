import 'dart:developer';

import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDTO implements _$UserDTO {
  const UserDTO._();

  const factory UserDTO(
      {required String id,
      required String displayName,
      required String photoUrl,
      required String emailAddress,
      required List<dynamic> followers,
      required List<dynamic> following}) = _UserDTO;

  static User toDomain(Map<String, dynamic> data) {
    log("error here in user to domain");
    return User(
        id: UniqueId.fromUniqueString(data['id']),
        displayName: data['displayName'],
        photoUrl: data['photoUrl'],
        emailAddress: data['emailAddress'],
        followers: data['followers'],
        following: data['following']);
  }

  factory UserDTO.fromDomain(User user) {
    return UserDTO(
        id: user.id!.getOrCrash(),
        displayName: user.displayName!,
        photoUrl: user.photoUrl!,
        emailAddress: user.emailAddress!,
        followers: user.followers!,
        following: user.following!);
  }

  factory UserDTO.fromJson(Map<String, dynamic> userJSON) =>
      _$UserDTOFromJson(userJSON);
}
