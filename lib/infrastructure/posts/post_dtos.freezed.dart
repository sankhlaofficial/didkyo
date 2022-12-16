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

PostDTO _$PostDTOFromJson(Map<String, dynamic> json) {
  return _PostDTO.fromJson(json);
}

/// @nodoc
mixin _$PostDTO {
  String get postCaption => throw _privateConstructorUsedError;
  String get postID => throw _privateConstructorUsedError;
  String get postImageURL => throw _privateConstructorUsedError;
  String get postLocation => throw _privateConstructorUsedError;
  DateTime get postDateTime => throw _privateConstructorUsedError;
  Map<String, dynamic> get postUser => throw _privateConstructorUsedError;
  List<CommentDTO> get postComments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostDTOCopyWith<PostDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDTOCopyWith<$Res> {
  factory $PostDTOCopyWith(PostDTO value, $Res Function(PostDTO) then) =
      _$PostDTOCopyWithImpl<$Res, PostDTO>;
  @useResult
  $Res call(
      {String postCaption,
      String postID,
      String postImageURL,
      String postLocation,
      DateTime postDateTime,
      Map<String, dynamic> postUser,
      List<CommentDTO> postComments});
}

/// @nodoc
class _$PostDTOCopyWithImpl<$Res, $Val extends PostDTO>
    implements $PostDTOCopyWith<$Res> {
  _$PostDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postCaption = null,
    Object? postID = null,
    Object? postImageURL = null,
    Object? postLocation = null,
    Object? postDateTime = null,
    Object? postUser = null,
    Object? postComments = null,
  }) {
    return _then(_value.copyWith(
      postCaption: null == postCaption
          ? _value.postCaption
          : postCaption // ignore: cast_nullable_to_non_nullable
              as String,
      postID: null == postID
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as String,
      postImageURL: null == postImageURL
          ? _value.postImageURL
          : postImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      postLocation: null == postLocation
          ? _value.postLocation
          : postLocation // ignore: cast_nullable_to_non_nullable
              as String,
      postDateTime: null == postDateTime
          ? _value.postDateTime
          : postDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      postUser: null == postUser
          ? _value.postUser
          : postUser // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      postComments: null == postComments
          ? _value.postComments
          : postComments // ignore: cast_nullable_to_non_nullable
              as List<CommentDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostDTOCopyWith<$Res> implements $PostDTOCopyWith<$Res> {
  factory _$$_PostDTOCopyWith(
          _$_PostDTO value, $Res Function(_$_PostDTO) then) =
      __$$_PostDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String postCaption,
      String postID,
      String postImageURL,
      String postLocation,
      DateTime postDateTime,
      Map<String, dynamic> postUser,
      List<CommentDTO> postComments});
}

/// @nodoc
class __$$_PostDTOCopyWithImpl<$Res>
    extends _$PostDTOCopyWithImpl<$Res, _$_PostDTO>
    implements _$$_PostDTOCopyWith<$Res> {
  __$$_PostDTOCopyWithImpl(_$_PostDTO _value, $Res Function(_$_PostDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postCaption = null,
    Object? postID = null,
    Object? postImageURL = null,
    Object? postLocation = null,
    Object? postDateTime = null,
    Object? postUser = null,
    Object? postComments = null,
  }) {
    return _then(_$_PostDTO(
      postCaption: null == postCaption
          ? _value.postCaption
          : postCaption // ignore: cast_nullable_to_non_nullable
              as String,
      postID: null == postID
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as String,
      postImageURL: null == postImageURL
          ? _value.postImageURL
          : postImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      postLocation: null == postLocation
          ? _value.postLocation
          : postLocation // ignore: cast_nullable_to_non_nullable
              as String,
      postDateTime: null == postDateTime
          ? _value.postDateTime
          : postDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      postUser: null == postUser
          ? _value._postUser
          : postUser // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      postComments: null == postComments
          ? _value._postComments
          : postComments // ignore: cast_nullable_to_non_nullable
              as List<CommentDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostDTO extends _PostDTO {
  const _$_PostDTO(
      {required this.postCaption,
      required this.postID,
      required this.postImageURL,
      required this.postLocation,
      required this.postDateTime,
      required final Map<String, dynamic> postUser,
      required final List<CommentDTO> postComments})
      : _postUser = postUser,
        _postComments = postComments,
        super._();

  factory _$_PostDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PostDTOFromJson(json);

  @override
  final String postCaption;
  @override
  final String postID;
  @override
  final String postImageURL;
  @override
  final String postLocation;
  @override
  final DateTime postDateTime;
  final Map<String, dynamic> _postUser;
  @override
  Map<String, dynamic> get postUser {
    if (_postUser is EqualUnmodifiableMapView) return _postUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_postUser);
  }

  final List<CommentDTO> _postComments;
  @override
  List<CommentDTO> get postComments {
    if (_postComments is EqualUnmodifiableListView) return _postComments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postComments);
  }

  @override
  String toString() {
    return 'PostDTO(postCaption: $postCaption, postID: $postID, postImageURL: $postImageURL, postLocation: $postLocation, postDateTime: $postDateTime, postUser: $postUser, postComments: $postComments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostDTO &&
            (identical(other.postCaption, postCaption) ||
                other.postCaption == postCaption) &&
            (identical(other.postID, postID) || other.postID == postID) &&
            (identical(other.postImageURL, postImageURL) ||
                other.postImageURL == postImageURL) &&
            (identical(other.postLocation, postLocation) ||
                other.postLocation == postLocation) &&
            (identical(other.postDateTime, postDateTime) ||
                other.postDateTime == postDateTime) &&
            const DeepCollectionEquality().equals(other._postUser, _postUser) &&
            const DeepCollectionEquality()
                .equals(other._postComments, _postComments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      postCaption,
      postID,
      postImageURL,
      postLocation,
      postDateTime,
      const DeepCollectionEquality().hash(_postUser),
      const DeepCollectionEquality().hash(_postComments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostDTOCopyWith<_$_PostDTO> get copyWith =>
      __$$_PostDTOCopyWithImpl<_$_PostDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostDTOToJson(
      this,
    );
  }
}

abstract class _PostDTO extends PostDTO {
  const factory _PostDTO(
      {required final String postCaption,
      required final String postID,
      required final String postImageURL,
      required final String postLocation,
      required final DateTime postDateTime,
      required final Map<String, dynamic> postUser,
      required final List<CommentDTO> postComments}) = _$_PostDTO;
  const _PostDTO._() : super._();

  factory _PostDTO.fromJson(Map<String, dynamic> json) = _$_PostDTO.fromJson;

  @override
  String get postCaption;
  @override
  String get postID;
  @override
  String get postImageURL;
  @override
  String get postLocation;
  @override
  DateTime get postDateTime;
  @override
  Map<String, dynamic> get postUser;
  @override
  List<CommentDTO> get postComments;
  @override
  @JsonKey(ignore: true)
  _$$_PostDTOCopyWith<_$_PostDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentDTO _$CommentDTOFromJson(Map<String, dynamic> json) {
  return _CommentDTO.fromJson(json);
}

/// @nodoc
mixin _$CommentDTO {
  String get commentID => throw _privateConstructorUsedError;
  String get commentMessage => throw _privateConstructorUsedError;
  DateTime get commentDateTime => throw _privateConstructorUsedError;
  Map<String, dynamic> get commentUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
@JsonSerializable()
class _$_CommentDTO extends _CommentDTO {
  const _$_CommentDTO(
      {required this.commentID,
      required this.commentMessage,
      required this.commentDateTime,
      required final Map<String, dynamic> commentUser})
      : _commentUser = commentUser,
        super._();

  factory _$_CommentDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CommentDTOFromJson(json);

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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, commentID, commentMessage,
      commentDateTime, const DeepCollectionEquality().hash(_commentUser));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentDTOCopyWith<_$_CommentDTO> get copyWith =>
      __$$_CommentDTOCopyWithImpl<_$_CommentDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentDTOToJson(
      this,
    );
  }
}

abstract class _CommentDTO extends CommentDTO {
  const factory _CommentDTO(
      {required final String commentID,
      required final String commentMessage,
      required final DateTime commentDateTime,
      required final Map<String, dynamic> commentUser}) = _$_CommentDTO;
  const _CommentDTO._() : super._();

  factory _CommentDTO.fromJson(Map<String, dynamic> json) =
      _$_CommentDTO.fromJson;

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
