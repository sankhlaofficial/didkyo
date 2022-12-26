import 'package:didkyo/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required UniqueId? id,
    required String? displayName,
    required String? emailAddress,
    required String? photoUrl,
    required List<dynamic>? followers,
    required List<dynamic>? following,
  }) = _User;
}
