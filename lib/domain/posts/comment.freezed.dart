// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostComment {
  UniqueId get commentID => throw _privateConstructorUsedError;
  PostCommentMessage get commentMessage => throw _privateConstructorUsedError;
  DateTime get commentDateTime => throw _privateConstructorUsedError;
  String get commentUserId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostCommentCopyWith<PostComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCommentCopyWith<$Res> {
  factory $PostCommentCopyWith(
          PostComment value, $Res Function(PostComment) then) =
      _$PostCommentCopyWithImpl<$Res, PostComment>;
  @useResult
  $Res call(
      {UniqueId commentID,
      PostCommentMessage commentMessage,
      DateTime commentDateTime,
      String commentUserId});
}

/// @nodoc
class _$PostCommentCopyWithImpl<$Res, $Val extends PostComment>
    implements $PostCommentCopyWith<$Res> {
  _$PostCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentID = null,
    Object? commentMessage = null,
    Object? commentDateTime = null,
    Object? commentUserId = null,
  }) {
    return _then(_value.copyWith(
      commentID: null == commentID
          ? _value.commentID
          : commentID // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      commentMessage: null == commentMessage
          ? _value.commentMessage
          : commentMessage // ignore: cast_nullable_to_non_nullable
              as PostCommentMessage,
      commentDateTime: null == commentDateTime
          ? _value.commentDateTime
          : commentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      commentUserId: null == commentUserId
          ? _value.commentUserId
          : commentUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostCommentCopyWith<$Res>
    implements $PostCommentCopyWith<$Res> {
  factory _$$_PostCommentCopyWith(
          _$_PostComment value, $Res Function(_$_PostComment) then) =
      __$$_PostCommentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId commentID,
      PostCommentMessage commentMessage,
      DateTime commentDateTime,
      String commentUserId});
}

/// @nodoc
class __$$_PostCommentCopyWithImpl<$Res>
    extends _$PostCommentCopyWithImpl<$Res, _$_PostComment>
    implements _$$_PostCommentCopyWith<$Res> {
  __$$_PostCommentCopyWithImpl(
      _$_PostComment _value, $Res Function(_$_PostComment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentID = null,
    Object? commentMessage = null,
    Object? commentDateTime = null,
    Object? commentUserId = null,
  }) {
    return _then(_$_PostComment(
      commentID: null == commentID
          ? _value.commentID
          : commentID // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      commentMessage: null == commentMessage
          ? _value.commentMessage
          : commentMessage // ignore: cast_nullable_to_non_nullable
              as PostCommentMessage,
      commentDateTime: null == commentDateTime
          ? _value.commentDateTime
          : commentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      commentUserId: null == commentUserId
          ? _value.commentUserId
          : commentUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PostComment extends _PostComment {
  const _$_PostComment(
      {required this.commentID,
      required this.commentMessage,
      required this.commentDateTime,
      required this.commentUserId})
      : super._();

  @override
  final UniqueId commentID;
  @override
  final PostCommentMessage commentMessage;
  @override
  final DateTime commentDateTime;
  @override
  final String commentUserId;

  @override
  String toString() {
    return 'PostComment(commentID: $commentID, commentMessage: $commentMessage, commentDateTime: $commentDateTime, commentUserId: $commentUserId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostComment &&
            (identical(other.commentID, commentID) ||
                other.commentID == commentID) &&
            (identical(other.commentMessage, commentMessage) ||
                other.commentMessage == commentMessage) &&
            (identical(other.commentDateTime, commentDateTime) ||
                other.commentDateTime == commentDateTime) &&
            (identical(other.commentUserId, commentUserId) ||
                other.commentUserId == commentUserId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, commentID, commentMessage, commentDateTime, commentUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostCommentCopyWith<_$_PostComment> get copyWith =>
      __$$_PostCommentCopyWithImpl<_$_PostComment>(this, _$identity);
}

abstract class _PostComment extends PostComment {
  const factory _PostComment(
      {required final UniqueId commentID,
      required final PostCommentMessage commentMessage,
      required final DateTime commentDateTime,
      required final String commentUserId}) = _$_PostComment;
  const _PostComment._() : super._();

  @override
  UniqueId get commentID;
  @override
  PostCommentMessage get commentMessage;
  @override
  DateTime get commentDateTime;
  @override
  String get commentUserId;
  @override
  @JsonKey(ignore: true)
  _$$_PostCommentCopyWith<_$_PostComment> get copyWith =>
      throw _privateConstructorUsedError;
}
