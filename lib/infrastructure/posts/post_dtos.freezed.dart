// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentDTO {
  String get commentID => throw _privateConstructorUsedError;
  String get commentMessage => throw _privateConstructorUsedError;
  DateTime get commentDateTime => throw _privateConstructorUsedError;
  Map<String, dynamic> get commentUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentDTOCopyWith<CommentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentDTOCopyWith<$Res> {
  factory $CommentDTOCopyWith(
          CommentDTO value, $Res Function(CommentDTO) then) =
      _$CommentDTOCopyWithImpl<$Res, CommentDTO>;
  @useResult
  $Res call(
      {String commentID,
      String commentMessage,
      DateTime commentDateTime,
      Map<String, dynamic> commentUser});
}

/// @nodoc
class _$CommentDTOCopyWithImpl<$Res, $Val extends CommentDTO>
    implements $CommentDTOCopyWith<$Res> {
  _$CommentDTOCopyWithImpl(this._value, this._then);

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
    Object? commentUser = null,
  }) {
    return _then(_value.copyWith(
      commentID: null == commentID
          ? _value.commentID
          : commentID // ignore: cast_nullable_to_non_nullable
              as String,
      commentMessage: null == commentMessage
          ? _value.commentMessage
          : commentMessage // ignore: cast_nullable_to_non_nullable
              as String,
      commentDateTime: null == commentDateTime
          ? _value.commentDateTime
          : commentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      commentUser: null == commentUser
          ? _value.commentUser
          : commentUser // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentDTOCopyWith<$Res>
    implements $CommentDTOCopyWith<$Res> {
  factory _$$_CommentDTOCopyWith(
          _$_CommentDTO value, $Res Function(_$_CommentDTO) then) =
      __$$_CommentDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String commentID,
      String commentMessage,
      DateTime commentDateTime,
      Map<String, dynamic> commentUser});
}

/// @nodoc
class __$$_CommentDTOCopyWithImpl<$Res>
    extends _$CommentDTOCopyWithImpl<$Res, _$_CommentDTO>
    implements _$$_CommentDTOCopyWith<$Res> {
  __$$_CommentDTOCopyWithImpl(
      _$_CommentDTO _value, $Res Function(_$_CommentDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentID = null,
    Object? commentMessage = null,
    Object? commentDateTime = null,
    Object? commentUser = null,
  }) {
    return _then(_$_CommentDTO(
      commentID: null == commentID
          ? _value.commentID
          : commentID // ignore: cast_nullable_to_non_nullable
              as String,
      commentMessage: null == commentMessage
          ? _value.commentMessage
          : commentMessage // ignore: cast_nullable_to_non_nullable
              as String,
      commentDateTime: null == commentDateTime
          ? _value.commentDateTime
          : commentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      commentUser: null == commentUser
          ? _value._commentUser
          : commentUser // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_CommentDTO implements _CommentDTO {
  const _$_CommentDTO(
      {required this.commentID,
      required this.commentMessage,
      required this.commentDateTime,
      required final Map<String, dynamic> commentUser})
      : _commentUser = commentUser;

  @override
  final String commentID;
  @override
  final String commentMessage;
  @override
  final DateTime commentDateTime;
  final Map<String, dynamic> _commentUser;
  @override
  Map<String, dynamic> get commentUser {
    if (_commentUser is EqualUnmodifiableMapView) return _commentUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_commentUser);
  }

  @override
  String toString() {
    return 'CommentDTO(commentID: $commentID, commentMessage: $commentMessage, commentDateTime: $commentDateTime, commentUser: $commentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentDTO &&
            (identical(other.commentID, commentID) ||
                other.commentID == commentID) &&
            (identical(other.commentMessage, commentMessage) ||
                other.commentMessage == commentMessage) &&
            (identical(other.commentDateTime, commentDateTime) ||
                other.commentDateTime == commentDateTime) &&
            const DeepCollectionEquality()
                .equals(other._commentUser, _commentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentID, commentMessage,
      commentDateTime, const DeepCollectionEquality().hash(_commentUser));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentDTOCopyWith<_$_CommentDTO> get copyWith =>
      __$$_CommentDTOCopyWithImpl<_$_CommentDTO>(this, _$identity);
}

abstract class _CommentDTO implements CommentDTO {
  const factory _CommentDTO(
      {required final String commentID,
      required final String commentMessage,
      required final DateTime commentDateTime,
      required final Map<String, dynamic> commentUser}) = _$_CommentDTO;

  @override
  String get commentID;
  @override
  String get commentMessage;
  @override
  DateTime get commentDateTime;
  @override
  Map<String, dynamic> get commentUser;
  @override
  @JsonKey(ignore: true)
  _$$_CommentDTOCopyWith<_$_CommentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
