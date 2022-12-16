// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Post {
  UniqueId get postID => throw _privateConstructorUsedError;
  PostCaption get postCaption => throw _privateConstructorUsedError;
  PostImageURL get postImage => throw _privateConstructorUsedError;
  PostLocation get postLocation => throw _privateConstructorUsedError;
  User get postUser => throw _privateConstructorUsedError;
  DateTime get postDateTime => throw _privateConstructorUsedError;
  List<PostComment> get postComments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {UniqueId postID,
      PostCaption postCaption,
      PostImageURL postImage,
      PostLocation postLocation,
      User postUser,
      DateTime postDateTime,
      List<PostComment> postComments});

  $UserCopyWith<$Res> get postUser;
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postID = null,
    Object? postCaption = null,
    Object? postImage = null,
    Object? postLocation = null,
    Object? postUser = null,
    Object? postDateTime = null,
    Object? postComments = null,
  }) {
    return _then(_value.copyWith(
      postID: null == postID
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      postCaption: null == postCaption
          ? _value.postCaption
          : postCaption // ignore: cast_nullable_to_non_nullable
              as PostCaption,
      postImage: null == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as PostImageURL,
      postLocation: null == postLocation
          ? _value.postLocation
          : postLocation // ignore: cast_nullable_to_non_nullable
              as PostLocation,
      postUser: null == postUser
          ? _value.postUser
          : postUser // ignore: cast_nullable_to_non_nullable
              as User,
      postDateTime: null == postDateTime
          ? _value.postDateTime
          : postDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      postComments: null == postComments
          ? _value.postComments
          : postComments // ignore: cast_nullable_to_non_nullable
              as List<PostComment>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get postUser {
    return $UserCopyWith<$Res>(_value.postUser, (value) {
      return _then(_value.copyWith(postUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$_PostCopyWith(_$_Post value, $Res Function(_$_Post) then) =
      __$$_PostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId postID,
      PostCaption postCaption,
      PostImageURL postImage,
      PostLocation postLocation,
      User postUser,
      DateTime postDateTime,
      List<PostComment> postComments});

  @override
  $UserCopyWith<$Res> get postUser;
}

/// @nodoc
class __$$_PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res, _$_Post>
    implements _$$_PostCopyWith<$Res> {
  __$$_PostCopyWithImpl(_$_Post _value, $Res Function(_$_Post) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postID = null,
    Object? postCaption = null,
    Object? postImage = null,
    Object? postLocation = null,
    Object? postUser = null,
    Object? postDateTime = null,
    Object? postComments = null,
  }) {
    return _then(_$_Post(
      postID: null == postID
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      postCaption: null == postCaption
          ? _value.postCaption
          : postCaption // ignore: cast_nullable_to_non_nullable
              as PostCaption,
      postImage: null == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as PostImageURL,
      postLocation: null == postLocation
          ? _value.postLocation
          : postLocation // ignore: cast_nullable_to_non_nullable
              as PostLocation,
      postUser: null == postUser
          ? _value.postUser
          : postUser // ignore: cast_nullable_to_non_nullable
              as User,
      postDateTime: null == postDateTime
          ? _value.postDateTime
          : postDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      postComments: null == postComments
          ? _value._postComments
          : postComments // ignore: cast_nullable_to_non_nullable
              as List<PostComment>,
    ));
  }
}

/// @nodoc

class _$_Post extends _Post {
  const _$_Post(
      {required this.postID,
      required this.postCaption,
      required this.postImage,
      required this.postLocation,
      required this.postUser,
      required this.postDateTime,
      required final List<PostComment> postComments})
      : _postComments = postComments,
        super._();

  @override
  final UniqueId postID;
  @override
  final PostCaption postCaption;
  @override
  final PostImageURL postImage;
  @override
  final PostLocation postLocation;
  @override
  final User postUser;
  @override
  final DateTime postDateTime;
  final List<PostComment> _postComments;
  @override
  List<PostComment> get postComments {
    if (_postComments is EqualUnmodifiableListView) return _postComments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postComments);
  }

  @override
  String toString() {
    return 'Post(postID: $postID, postCaption: $postCaption, postImage: $postImage, postLocation: $postLocation, postUser: $postUser, postDateTime: $postDateTime, postComments: $postComments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Post &&
            (identical(other.postID, postID) || other.postID == postID) &&
            (identical(other.postCaption, postCaption) ||
                other.postCaption == postCaption) &&
            (identical(other.postImage, postImage) ||
                other.postImage == postImage) &&
            (identical(other.postLocation, postLocation) ||
                other.postLocation == postLocation) &&
            (identical(other.postUser, postUser) ||
                other.postUser == postUser) &&
            (identical(other.postDateTime, postDateTime) ||
                other.postDateTime == postDateTime) &&
            const DeepCollectionEquality()
                .equals(other._postComments, _postComments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      postID,
      postCaption,
      postImage,
      postLocation,
      postUser,
      postDateTime,
      const DeepCollectionEquality().hash(_postComments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostCopyWith<_$_Post> get copyWith =>
      __$$_PostCopyWithImpl<_$_Post>(this, _$identity);
}

abstract class _Post extends Post {
  const factory _Post(
      {required final UniqueId postID,
      required final PostCaption postCaption,
      required final PostImageURL postImage,
      required final PostLocation postLocation,
      required final User postUser,
      required final DateTime postDateTime,
      required final List<PostComment> postComments}) = _$_Post;
  const _Post._() : super._();

  @override
  UniqueId get postID;
  @override
  PostCaption get postCaption;
  @override
  PostImageURL get postImage;
  @override
  PostLocation get postLocation;
  @override
  User get postUser;
  @override
  DateTime get postDateTime;
  @override
  List<PostComment> get postComments;
  @override
  @JsonKey(ignore: true)
  _$$_PostCopyWith<_$_Post> get copyWith => throw _privateConstructorUsedError;
}