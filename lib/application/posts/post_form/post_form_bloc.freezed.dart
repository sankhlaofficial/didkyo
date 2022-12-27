// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> initialPostData) initialized,
    required TResult Function(String postCap) captionChanged,
    required TResult Function(String postImagePath) imageChanged,
    required TResult Function(String postLoc) locationChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Post> initialPostData)? initialized,
    TResult? Function(String postCap)? captionChanged,
    TResult? Function(String postImagePath)? imageChanged,
    TResult? Function(String postLoc)? locationChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> initialPostData)? initialized,
    TResult Function(String postCap)? captionChanged,
    TResult Function(String postImagePath)? imageChanged,
    TResult Function(String postLoc)? locationChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CaptionChanged value) captionChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_PostSaved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CaptionChanged value)? captionChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_PostSaved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CaptionChanged value)? captionChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_PostSaved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFormEventCopyWith<$Res> {
  factory $PostFormEventCopyWith(
          PostFormEvent value, $Res Function(PostFormEvent) then) =
      _$PostFormEventCopyWithImpl<$Res, PostFormEvent>;
}

/// @nodoc
class _$PostFormEventCopyWithImpl<$Res, $Val extends PostFormEvent>
    implements $PostFormEventCopyWith<$Res> {
  _$PostFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Post> initialPostData});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialPostData = null,
  }) {
    return _then(_$_Initialized(
      null == initialPostData
          ? _value.initialPostData
          : initialPostData // ignore: cast_nullable_to_non_nullable
              as Option<Post>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialPostData);

  @override
  final Option<Post> initialPostData;

  @override
  String toString() {
    return 'PostFormEvent.initialized(initialPostData: $initialPostData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.initialPostData, initialPostData) ||
                other.initialPostData == initialPostData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialPostData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> initialPostData) initialized,
    required TResult Function(String postCap) captionChanged,
    required TResult Function(String postImagePath) imageChanged,
    required TResult Function(String postLoc) locationChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialPostData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Post> initialPostData)? initialized,
    TResult? Function(String postCap)? captionChanged,
    TResult? Function(String postImagePath)? imageChanged,
    TResult? Function(String postLoc)? locationChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialPostData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> initialPostData)? initialized,
    TResult Function(String postCap)? captionChanged,
    TResult Function(String postImagePath)? imageChanged,
    TResult Function(String postLoc)? locationChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialPostData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CaptionChanged value) captionChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_PostSaved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CaptionChanged value)? captionChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_PostSaved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CaptionChanged value)? captionChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_PostSaved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements PostFormEvent {
  const factory _Initialized(final Option<Post> initialPostData) =
      _$_Initialized;

  Option<Post> get initialPostData;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CaptionChangedCopyWith<$Res> {
  factory _$$_CaptionChangedCopyWith(
          _$_CaptionChanged value, $Res Function(_$_CaptionChanged) then) =
      __$$_CaptionChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String postCap});
}

/// @nodoc
class __$$_CaptionChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res, _$_CaptionChanged>
    implements _$$_CaptionChangedCopyWith<$Res> {
  __$$_CaptionChangedCopyWithImpl(
      _$_CaptionChanged _value, $Res Function(_$_CaptionChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postCap = null,
  }) {
    return _then(_$_CaptionChanged(
      null == postCap
          ? _value.postCap
          : postCap // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CaptionChanged implements _CaptionChanged {
  const _$_CaptionChanged(this.postCap);

  @override
  final String postCap;

  @override
  String toString() {
    return 'PostFormEvent.captionChanged(postCap: $postCap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CaptionChanged &&
            (identical(other.postCap, postCap) || other.postCap == postCap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postCap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CaptionChangedCopyWith<_$_CaptionChanged> get copyWith =>
      __$$_CaptionChangedCopyWithImpl<_$_CaptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> initialPostData) initialized,
    required TResult Function(String postCap) captionChanged,
    required TResult Function(String postImagePath) imageChanged,
    required TResult Function(String postLoc) locationChanged,
    required TResult Function() saved,
  }) {
    return captionChanged(postCap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Post> initialPostData)? initialized,
    TResult? Function(String postCap)? captionChanged,
    TResult? Function(String postImagePath)? imageChanged,
    TResult? Function(String postLoc)? locationChanged,
    TResult? Function()? saved,
  }) {
    return captionChanged?.call(postCap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> initialPostData)? initialized,
    TResult Function(String postCap)? captionChanged,
    TResult Function(String postImagePath)? imageChanged,
    TResult Function(String postLoc)? locationChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (captionChanged != null) {
      return captionChanged(postCap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CaptionChanged value) captionChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_PostSaved value) saved,
  }) {
    return captionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CaptionChanged value)? captionChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_PostSaved value)? saved,
  }) {
    return captionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CaptionChanged value)? captionChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_PostSaved value)? saved,
    required TResult orElse(),
  }) {
    if (captionChanged != null) {
      return captionChanged(this);
    }
    return orElse();
  }
}

abstract class _CaptionChanged implements PostFormEvent {
  const factory _CaptionChanged(final String postCap) = _$_CaptionChanged;

  String get postCap;
  @JsonKey(ignore: true)
  _$$_CaptionChangedCopyWith<_$_CaptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImageChangedCopyWith<$Res> {
  factory _$$_ImageChangedCopyWith(
          _$_ImageChanged value, $Res Function(_$_ImageChanged) then) =
      __$$_ImageChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String postImagePath});
}

/// @nodoc
class __$$_ImageChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res, _$_ImageChanged>
    implements _$$_ImageChangedCopyWith<$Res> {
  __$$_ImageChangedCopyWithImpl(
      _$_ImageChanged _value, $Res Function(_$_ImageChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postImagePath = null,
  }) {
    return _then(_$_ImageChanged(
      null == postImagePath
          ? _value.postImagePath
          : postImagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImageChanged implements _ImageChanged {
  const _$_ImageChanged(this.postImagePath);

  @override
  final String postImagePath;

  @override
  String toString() {
    return 'PostFormEvent.imageChanged(postImagePath: $postImagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageChanged &&
            (identical(other.postImagePath, postImagePath) ||
                other.postImagePath == postImagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageChangedCopyWith<_$_ImageChanged> get copyWith =>
      __$$_ImageChangedCopyWithImpl<_$_ImageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> initialPostData) initialized,
    required TResult Function(String postCap) captionChanged,
    required TResult Function(String postImagePath) imageChanged,
    required TResult Function(String postLoc) locationChanged,
    required TResult Function() saved,
  }) {
    return imageChanged(postImagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Post> initialPostData)? initialized,
    TResult? Function(String postCap)? captionChanged,
    TResult? Function(String postImagePath)? imageChanged,
    TResult? Function(String postLoc)? locationChanged,
    TResult? Function()? saved,
  }) {
    return imageChanged?.call(postImagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> initialPostData)? initialized,
    TResult Function(String postCap)? captionChanged,
    TResult Function(String postImagePath)? imageChanged,
    TResult Function(String postLoc)? locationChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(postImagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CaptionChanged value) captionChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_PostSaved value) saved,
  }) {
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CaptionChanged value)? captionChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_PostSaved value)? saved,
  }) {
    return imageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CaptionChanged value)? captionChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_PostSaved value)? saved,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageChanged implements PostFormEvent {
  const factory _ImageChanged(final String postImagePath) = _$_ImageChanged;

  String get postImagePath;
  @JsonKey(ignore: true)
  _$$_ImageChangedCopyWith<_$_ImageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocationChangedCopyWith<$Res> {
  factory _$$_LocationChangedCopyWith(
          _$_LocationChanged value, $Res Function(_$_LocationChanged) then) =
      __$$_LocationChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String postLoc});
}

/// @nodoc
class __$$_LocationChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res, _$_LocationChanged>
    implements _$$_LocationChangedCopyWith<$Res> {
  __$$_LocationChangedCopyWithImpl(
      _$_LocationChanged _value, $Res Function(_$_LocationChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postLoc = null,
  }) {
    return _then(_$_LocationChanged(
      null == postLoc
          ? _value.postLoc
          : postLoc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LocationChanged implements _LocationChanged {
  const _$_LocationChanged(this.postLoc);

  @override
  final String postLoc;

  @override
  String toString() {
    return 'PostFormEvent.locationChanged(postLoc: $postLoc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationChanged &&
            (identical(other.postLoc, postLoc) || other.postLoc == postLoc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postLoc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationChangedCopyWith<_$_LocationChanged> get copyWith =>
      __$$_LocationChangedCopyWithImpl<_$_LocationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> initialPostData) initialized,
    required TResult Function(String postCap) captionChanged,
    required TResult Function(String postImagePath) imageChanged,
    required TResult Function(String postLoc) locationChanged,
    required TResult Function() saved,
  }) {
    return locationChanged(postLoc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Post> initialPostData)? initialized,
    TResult? Function(String postCap)? captionChanged,
    TResult? Function(String postImagePath)? imageChanged,
    TResult? Function(String postLoc)? locationChanged,
    TResult? Function()? saved,
  }) {
    return locationChanged?.call(postLoc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> initialPostData)? initialized,
    TResult Function(String postCap)? captionChanged,
    TResult Function(String postImagePath)? imageChanged,
    TResult Function(String postLoc)? locationChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(postLoc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CaptionChanged value) captionChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_PostSaved value) saved,
  }) {
    return locationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CaptionChanged value)? captionChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_PostSaved value)? saved,
  }) {
    return locationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CaptionChanged value)? captionChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_PostSaved value)? saved,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(this);
    }
    return orElse();
  }
}

abstract class _LocationChanged implements PostFormEvent {
  const factory _LocationChanged(final String postLoc) = _$_LocationChanged;

  String get postLoc;
  @JsonKey(ignore: true)
  _$$_LocationChangedCopyWith<_$_LocationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PostSavedCopyWith<$Res> {
  factory _$$_PostSavedCopyWith(
          _$_PostSaved value, $Res Function(_$_PostSaved) then) =
      __$$_PostSavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PostSavedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res, _$_PostSaved>
    implements _$$_PostSavedCopyWith<$Res> {
  __$$_PostSavedCopyWithImpl(
      _$_PostSaved _value, $Res Function(_$_PostSaved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PostSaved implements _PostSaved {
  const _$_PostSaved();

  @override
  String toString() {
    return 'PostFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PostSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> initialPostData) initialized,
    required TResult Function(String postCap) captionChanged,
    required TResult Function(String postImagePath) imageChanged,
    required TResult Function(String postLoc) locationChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Post> initialPostData)? initialized,
    TResult? Function(String postCap)? captionChanged,
    TResult? Function(String postImagePath)? imageChanged,
    TResult? Function(String postLoc)? locationChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> initialPostData)? initialized,
    TResult Function(String postCap)? captionChanged,
    TResult Function(String postImagePath)? imageChanged,
    TResult Function(String postLoc)? locationChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CaptionChanged value) captionChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_PostSaved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CaptionChanged value)? captionChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_PostSaved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CaptionChanged value)? captionChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_PostSaved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _PostSaved implements PostFormEvent {
  const factory _PostSaved() = _$_PostSaved;
}

/// @nodoc
mixin _$PostFormState {
  Post get post => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<PostFailure, Unit>> get savePostFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostFormStateCopyWith<PostFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFormStateCopyWith<$Res> {
  factory $PostFormStateCopyWith(
          PostFormState value, $Res Function(PostFormState) then) =
      _$PostFormStateCopyWithImpl<$Res, PostFormState>;
  @useResult
  $Res call(
      {Post post,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<PostFailure, Unit>> savePostFailureOrSuccessOption});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class _$PostFormStateCopyWithImpl<$Res, $Val extends PostFormState>
    implements $PostFormStateCopyWith<$Res> {
  _$PostFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? savePostFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      savePostFailureOrSuccessOption: null == savePostFailureOrSuccessOption
          ? _value.savePostFailureOrSuccessOption
          : savePostFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PostFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PostFormStateCopyWith<$Res>
    implements $PostFormStateCopyWith<$Res> {
  factory _$$_PostFormStateCopyWith(
          _$_PostFormState value, $Res Function(_$_PostFormState) then) =
      __$$_PostFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Post post,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<PostFailure, Unit>> savePostFailureOrSuccessOption});

  @override
  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$$_PostFormStateCopyWithImpl<$Res>
    extends _$PostFormStateCopyWithImpl<$Res, _$_PostFormState>
    implements _$$_PostFormStateCopyWith<$Res> {
  __$$_PostFormStateCopyWithImpl(
      _$_PostFormState _value, $Res Function(_$_PostFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? savePostFailureOrSuccessOption = null,
  }) {
    return _then(_$_PostFormState(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      savePostFailureOrSuccessOption: null == savePostFailureOrSuccessOption
          ? _value.savePostFailureOrSuccessOption
          : savePostFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PostFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_PostFormState implements _PostFormState {
  const _$_PostFormState(
      {required this.post,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.savePostFailureOrSuccessOption});

  @override
  final Post post;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<PostFailure, Unit>> savePostFailureOrSuccessOption;

  @override
  String toString() {
    return 'PostFormState(post: $post, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, savePostFailureOrSuccessOption: $savePostFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostFormState &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.savePostFailureOrSuccessOption,
                    savePostFailureOrSuccessOption) ||
                other.savePostFailureOrSuccessOption ==
                    savePostFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post, showErrorMessages,
      isEditing, isSaving, savePostFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostFormStateCopyWith<_$_PostFormState> get copyWith =>
      __$$_PostFormStateCopyWithImpl<_$_PostFormState>(this, _$identity);
}

abstract class _PostFormState implements PostFormState {
  const factory _PostFormState(
      {required final Post post,
      required final bool showErrorMessages,
      required final bool isEditing,
      required final bool isSaving,
      required final Option<Either<PostFailure, Unit>>
          savePostFailureOrSuccessOption}) = _$_PostFormState;

  @override
  Post get post;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<PostFailure, Unit>> get savePostFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_PostFormStateCopyWith<_$_PostFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
