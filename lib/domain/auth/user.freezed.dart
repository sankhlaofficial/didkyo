// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  String? get pushToken => throw _privateConstructorUsedError;
  UniqueId? get id => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get emailAddress => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  List<dynamic>? get followers => throw _privateConstructorUsedError;
  List<dynamic>? get following => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? pushToken,
      UniqueId? id,
      String? displayName,
      String? emailAddress,
      String? photoUrl,
      String? bio,
      List<dynamic>? followers,
      List<dynamic>? following});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pushToken = freezed,
    Object? id = freezed,
    Object? displayName = freezed,
    Object? emailAddress = freezed,
    Object? photoUrl = freezed,
    Object? bio = freezed,
    Object? followers = freezed,
    Object? following = freezed,
  }) {
    return _then(_value.copyWith(
      pushToken: freezed == pushToken
          ? _value.pushToken
          : pushToken // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? pushToken,
      UniqueId? id,
      String? displayName,
      String? emailAddress,
      String? photoUrl,
      String? bio,
      List<dynamic>? followers,
      List<dynamic>? following});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pushToken = freezed,
    Object? id = freezed,
    Object? displayName = freezed,
    Object? emailAddress = freezed,
    Object? photoUrl = freezed,
    Object? bio = freezed,
    Object? followers = freezed,
    Object? following = freezed,
  }) {
    return _then(_$_User(
      pushToken: freezed == pushToken
          ? _value.pushToken
          : pushToken // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: freezed == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      following: freezed == following
          ? _value._following
          : following // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(
      {required this.pushToken,
      required this.id,
      required this.displayName,
      required this.emailAddress,
      required this.photoUrl,
      required this.bio,
      required final List<dynamic>? followers,
      required final List<dynamic>? following})
      : _followers = followers,
        _following = following;

  @override
  final String? pushToken;
  @override
  final UniqueId? id;
  @override
  final String? displayName;
  @override
  final String? emailAddress;
  @override
  final String? photoUrl;
  @override
  final String? bio;
  final List<dynamic>? _followers;
  @override
  List<dynamic>? get followers {
    final value = _followers;
    if (value == null) return null;
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _following;
  @override
  List<dynamic>? get following {
    final value = _following;
    if (value == null) return null;
    if (_following is EqualUnmodifiableListView) return _following;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'User(pushToken: $pushToken, id: $id, displayName: $displayName, emailAddress: $emailAddress, photoUrl: $photoUrl, bio: $bio, followers: $followers, following: $following)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.pushToken, pushToken) ||
                other.pushToken == pushToken) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            const DeepCollectionEquality()
                .equals(other._following, _following));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pushToken,
      id,
      displayName,
      emailAddress,
      photoUrl,
      bio,
      const DeepCollectionEquality().hash(_followers),
      const DeepCollectionEquality().hash(_following));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required final String? pushToken,
      required final UniqueId? id,
      required final String? displayName,
      required final String? emailAddress,
      required final String? photoUrl,
      required final String? bio,
      required final List<dynamic>? followers,
      required final List<dynamic>? following}) = _$_User;

  @override
  String? get pushToken;
  @override
  UniqueId? get id;
  @override
  String? get displayName;
  @override
  String? get emailAddress;
  @override
  String? get photoUrl;
  @override
  String? get bio;
  @override
  List<dynamic>? get followers;
  @override
  List<dynamic>? get following;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
