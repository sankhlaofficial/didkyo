import 'package:didkyo/domain/auth/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDTO implements _$UserDTO {
  const UserDTO._();

  const factory UserDTO({
    required String id,
    required String displayName,
    required String photoUrl,
    required String emailAddress,
  }) = _UserDTO;

  factory UserDTO.fromDomain(User user) {
    return UserDTO(
        id: user.id!.getOrCrash(),
        displayName: user.displayName!,
        photoUrl: user.photoUrl!,
        emailAddress: user.emailAddress!);
  }

  factory UserDTO.fromJson(Map<String, dynamic> userJSON) =>
      _$UserDTOFromJson(userJSON);
}
