// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchGlobalStarted,
    required TResult Function(String userId) watchAllStarted,
    required TResult Function(String selectedLocation)
        watchLocationSpecificStarted,
    required TResult Function(Either<PostFailure, List<Post>> failureOrPosts)
        postsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchGlobalStarted,
    TResult? Function(String userId)? watchAllStarted,
    TResult? Function(String selectedLocation)? watchLocationSpecificStarted,
    TResult? Function(Either<PostFailure, List<Post>> failureOrPosts)?
        postsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchGlobalStarted,
    TResult Function(String userId)? watchAllStarted,
    TResult Function(String selectedLocation)? watchLocationSpecificStarted,
    TResult Function(Either<PostFailure, List<Post>> failureOrPosts)?
        postsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchGlobalStarted value) watchGlobalStarted,
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchLocationSpecificStarted value)
        watchLocationSpecificStarted,
    required TResult Function(_PostsReceived value) postsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchGlobalStarted value)? watchGlobalStarted,
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchLocationSpecificStarted value)?
        watchLocationSpecificStarted,
    TResult? Function(_PostsReceived value)? postsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchGlobalStarted value)? watchGlobalStarted,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchLocationSpecificStarted value)?
        watchLocationSpecificStarted,
    TResult Function(_PostsReceived value)? postsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostWatcherEventCopyWith<$Res> {
  factory $PostWatcherEventCopyWith(
          PostWatcherEvent value, $Res Function(PostWatcherEvent) then) =
      _$PostWatcherEventCopyWithImpl<$Res, PostWatcherEvent>;
}

/// @nodoc
class _$PostWatcherEventCopyWithImpl<$Res, $Val extends PostWatcherEvent>
    implements $PostWatcherEventCopyWith<$Res> {
  _$PostWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WatchGlobalStartedCopyWith<$Res> {
  factory _$$_WatchGlobalStartedCopyWith(_$_WatchGlobalStarted value,
          $Res Function(_$_WatchGlobalStarted) then) =
      __$$_WatchGlobalStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchGlobalStartedCopyWithImpl<$Res>
    extends _$PostWatcherEventCopyWithImpl<$Res, _$_WatchGlobalStarted>
    implements _$$_WatchGlobalStartedCopyWith<$Res> {
  __$$_WatchGlobalStartedCopyWithImpl(
      _$_WatchGlobalStarted _value, $Res Function(_$_WatchGlobalStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WatchGlobalStarted implements _WatchGlobalStarted {
  const _$_WatchGlobalStarted();

  @override
  String toString() {
    return 'PostWatcherEvent.watchGlobalStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchGlobalStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchGlobalStarted,
    required TResult Function(String userId) watchAllStarted,
    required TResult Function(String selectedLocation)
        watchLocationSpecificStarted,
    required TResult Function(Either<PostFailure, List<Post>> failureOrPosts)
        postsReceived,
  }) {
    return watchGlobalStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchGlobalStarted,
    TResult? Function(String userId)? watchAllStarted,
    TResult? Function(String selectedLocation)? watchLocationSpecificStarted,
    TResult? Function(Either<PostFailure, List<Post>> failureOrPosts)?
        postsReceived,
  }) {
    return watchGlobalStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchGlobalStarted,
    TResult Function(String userId)? watchAllStarted,
    TResult Function(String selectedLocation)? watchLocationSpecificStarted,
    TResult Function(Either<PostFailure, List<Post>> failureOrPosts)?
        postsReceived,
    required TResult orElse(),
  }) {
    if (watchGlobalStarted != null) {
      return watchGlobalStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchGlobalStarted value) watchGlobalStarted,
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchLocationSpecificStarted value)
        watchLocationSpecificStarted,
    required TResult Function(_PostsReceived value) postsReceived,
  }) {
    return watchGlobalStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchGlobalStarted value)? watchGlobalStarted,
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchLocationSpecificStarted value)?
        watchLocationSpecificStarted,
    TResult? Function(_PostsReceived value)? postsReceived,
  }) {
    return watchGlobalStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchGlobalStarted value)? watchGlobalStarted,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchLocationSpecificStarted value)?
        watchLocationSpecificStarted,
    TResult Function(_PostsReceived value)? postsReceived,
    required TResult orElse(),
  }) {
    if (watchGlobalStarted != null) {
      return watchGlobalStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchGlobalStarted implements PostWatcherEvent {
  const factory _WatchGlobalStarted() = _$_WatchGlobalStarted;
}

/// @nodoc
abstract class _$$_WatchAllStartedCopyWith<$Res> {
  factory _$$_WatchAllStartedCopyWith(
          _$_WatchAllStarted value, $Res Function(_$_WatchAllStarted) then) =
      __$$_WatchAllStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$_WatchAllStartedCopyWithImpl<$Res>
    extends _$PostWatcherEventCopyWithImpl<$Res, _$_WatchAllStarted>
    implements _$$_WatchAllStartedCopyWith<$Res> {
  __$$_WatchAllStartedCopyWithImpl(
      _$_WatchAllStarted _value, $Res Function(_$_WatchAllStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$_WatchAllStarted(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'PostWatcherEvent.watchAllStarted(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchAllStarted &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchAllStartedCopyWith<_$_WatchAllStarted> get copyWith =>
      __$$_WatchAllStartedCopyWithImpl<_$_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchGlobalStarted,
    required TResult Function(String userId) watchAllStarted,
    required TResult Function(String selectedLocation)
        watchLocationSpecificStarted,
    required TResult Function(Either<PostFailure, List<Post>> failureOrPosts)
        postsReceived,
  }) {
    return watchAllStarted(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchGlobalStarted,
    TResult? Function(String userId)? watchAllStarted,
    TResult? Function(String selectedLocation)? watchLocationSpecificStarted,
    TResult? Function(Either<PostFailure, List<Post>> failureOrPosts)?
        postsReceived,
  }) {
    return watchAllStarted?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchGlobalStarted,
    TResult Function(String userId)? watchAllStarted,
    TResult Function(String selectedLocation)? watchLocationSpecificStarted,
    TResult Function(Either<PostFailure, List<Post>> failureOrPosts)?
        postsReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchGlobalStarted value) watchGlobalStarted,
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchLocationSpecificStarted value)
        watchLocationSpecificStarted,
    required TResult Function(_PostsReceived value) postsReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchGlobalStarted value)? watchGlobalStarted,
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchLocationSpecificStarted value)?
        watchLocationSpecificStarted,
    TResult? Function(_PostsReceived value)? postsReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchGlobalStarted value)? watchGlobalStarted,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchLocationSpecificStarted value)?
        watchLocationSpecificStarted,
    TResult Function(_PostsReceived value)? postsReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements PostWatcherEvent {
  const factory _WatchAllStarted(final String userId) = _$_WatchAllStarted;

  String get userId;
  @JsonKey(ignore: true)
  _$$_WatchAllStartedCopyWith<_$_WatchAllStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WatchLocationSpecificStartedCopyWith<$Res> {
  factory _$$_WatchLocationSpecificStartedCopyWith(
          _$_WatchLocationSpecificStarted value,
          $Res Function(_$_WatchLocationSpecificStarted) then) =
      __$$_WatchLocationSpecificStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedLocation});
}

/// @nodoc
class __$$_WatchLocationSpecificStartedCopyWithImpl<$Res>
    extends _$PostWatcherEventCopyWithImpl<$Res,
        _$_WatchLocationSpecificStarted>
    implements _$$_WatchLocationSpecificStartedCopyWith<$Res> {
  __$$_WatchLocationSpecificStartedCopyWithImpl(
      _$_WatchLocationSpecificStarted _value,
      $Res Function(_$_WatchLocationSpecificStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLocation = null,
  }) {
    return _then(_$_WatchLocationSpecificStarted(
      null == selectedLocation
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchLocationSpecificStarted implements _WatchLocationSpecificStarted {
  const _$_WatchLocationSpecificStarted(this.selectedLocation);

  @override
  final String selectedLocation;

  @override
  String toString() {
    return 'PostWatcherEvent.watchLocationSpecificStarted(selectedLocation: $selectedLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchLocationSpecificStarted &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchLocationSpecificStartedCopyWith<_$_WatchLocationSpecificStarted>
      get copyWith => __$$_WatchLocationSpecificStartedCopyWithImpl<
          _$_WatchLocationSpecificStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchGlobalStarted,
    required TResult Function(String userId) watchAllStarted,
    required TResult Function(String selectedLocation)
        watchLocationSpecificStarted,
    required TResult Function(Either<PostFailure, List<Post>> failureOrPosts)
        postsReceived,
  }) {
    return watchLocationSpecificStarted(selectedLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchGlobalStarted,
    TResult? Function(String userId)? watchAllStarted,
    TResult? Function(String selectedLocation)? watchLocationSpecificStarted,
    TResult? Function(Either<PostFailure, List<Post>> failureOrPosts)?
        postsReceived,
  }) {
    return watchLocationSpecificStarted?.call(selectedLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchGlobalStarted,
    TResult Function(String userId)? watchAllStarted,
    TResult Function(String selectedLocation)? watchLocationSpecificStarted,
    TResult Function(Either<PostFailure, List<Post>> failureOrPosts)?
        postsReceived,
    required TResult orElse(),
  }) {
    if (watchLocationSpecificStarted != null) {
      return watchLocationSpecificStarted(selectedLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchGlobalStarted value) watchGlobalStarted,
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchLocationSpecificStarted value)
        watchLocationSpecificStarted,
    required TResult Function(_PostsReceived value) postsReceived,
  }) {
    return watchLocationSpecificStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchGlobalStarted value)? watchGlobalStarted,
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchLocationSpecificStarted value)?
        watchLocationSpecificStarted,
    TResult? Function(_PostsReceived value)? postsReceived,
  }) {
    return watchLocationSpecificStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchGlobalStarted value)? watchGlobalStarted,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchLocationSpecificStarted value)?
        watchLocationSpecificStarted,
    TResult Function(_PostsReceived value)? postsReceived,
    required TResult orElse(),
  }) {
    if (watchLocationSpecificStarted != null) {
      return watchLocationSpecificStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchLocationSpecificStarted implements PostWatcherEvent {
  const factory _WatchLocationSpecificStarted(final String selectedLocation) =
      _$_WatchLocationSpecificStarted;

  String get selectedLocation;
  @JsonKey(ignore: true)
  _$$_WatchLocationSpecificStartedCopyWith<_$_WatchLocationSpecificStarted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PostsReceivedCopyWith<$Res> {
  factory _$$_PostsReceivedCopyWith(
          _$_PostsReceived value, $Res Function(_$_PostsReceived) then) =
      __$$_PostsReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<PostFailure, List<Post>> failureOrPosts});
}

/// @nodoc
class __$$_PostsReceivedCopyWithImpl<$Res>
    extends _$PostWatcherEventCopyWithImpl<$Res, _$_PostsReceived>
    implements _$$_PostsReceivedCopyWith<$Res> {
  __$$_PostsReceivedCopyWithImpl(
      _$_PostsReceived _value, $Res Function(_$_PostsReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrPosts = null,
  }) {
    return _then(_$_PostsReceived(
      null == failureOrPosts
          ? _value.failureOrPosts
          : failureOrPosts // ignore: cast_nullable_to_non_nullable
              as Either<PostFailure, List<Post>>,
    ));
  }
}

/// @nodoc

class _$_PostsReceived implements _PostsReceived {
  const _$_PostsReceived(this.failureOrPosts);

  @override
  final Either<PostFailure, List<Post>> failureOrPosts;

  @override
  String toString() {
    return 'PostWatcherEvent.postsReceived(failureOrPosts: $failureOrPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostsReceived &&
            (identical(other.failureOrPosts, failureOrPosts) ||
                other.failureOrPosts == failureOrPosts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrPosts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostsReceivedCopyWith<_$_PostsReceived> get copyWith =>
      __$$_PostsReceivedCopyWithImpl<_$_PostsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchGlobalStarted,
    required TResult Function(String userId) watchAllStarted,
    required TResult Function(String selectedLocation)
        watchLocationSpecificStarted,
    required TResult Function(Either<PostFailure, List<Post>> failureOrPosts)
        postsReceived,
  }) {
    return postsReceived(failureOrPosts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchGlobalStarted,
    TResult? Function(String userId)? watchAllStarted,
    TResult? Function(String selectedLocation)? watchLocationSpecificStarted,
    TResult? Function(Either<PostFailure, List<Post>> failureOrPosts)?
        postsReceived,
  }) {
    return postsReceived?.call(failureOrPosts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchGlobalStarted,
    TResult Function(String userId)? watchAllStarted,
    TResult Function(String selectedLocation)? watchLocationSpecificStarted,
    TResult Function(Either<PostFailure, List<Post>> failureOrPosts)?
        postsReceived,
    required TResult orElse(),
  }) {
    if (postsReceived != null) {
      return postsReceived(failureOrPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchGlobalStarted value) watchGlobalStarted,
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchLocationSpecificStarted value)
        watchLocationSpecificStarted,
    required TResult Function(_PostsReceived value) postsReceived,
  }) {
    return postsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchGlobalStarted value)? watchGlobalStarted,
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchLocationSpecificStarted value)?
        watchLocationSpecificStarted,
    TResult? Function(_PostsReceived value)? postsReceived,
  }) {
    return postsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchGlobalStarted value)? watchGlobalStarted,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchLocationSpecificStarted value)?
        watchLocationSpecificStarted,
    TResult Function(_PostsReceived value)? postsReceived,
    required TResult orElse(),
  }) {
    if (postsReceived != null) {
      return postsReceived(this);
    }
    return orElse();
  }
}

abstract class _PostsReceived implements PostWatcherEvent {
  const factory _PostsReceived(
      final Either<PostFailure, List<Post>> failureOrPosts) = _$_PostsReceived;

  Either<PostFailure, List<Post>> get failureOrPosts;
  @JsonKey(ignore: true)
  _$$_PostsReceivedCopyWith<_$_PostsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Post> posts) loadSuccess,
    required TResult Function(PostFailure postFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Post> posts)? loadSuccess,
    TResult? Function(PostFailure postFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Post> posts)? loadSuccess,
    TResult Function(PostFailure postFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostWatcherStateCopyWith<$Res> {
  factory $PostWatcherStateCopyWith(
          PostWatcherState value, $Res Function(PostWatcherState) then) =
      _$PostWatcherStateCopyWithImpl<$Res, PostWatcherState>;
}

/// @nodoc
class _$PostWatcherStateCopyWithImpl<$Res, $Val extends PostWatcherState>
    implements $PostWatcherStateCopyWith<$Res> {
  _$PostWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PostWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PostWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Post> posts) loadSuccess,
    required TResult Function(PostFailure postFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Post> posts)? loadSuccess,
    TResult? Function(PostFailure postFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Post> posts)? loadSuccess,
    TResult Function(PostFailure postFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$PostWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'PostWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Post> posts) loadSuccess,
    required TResult Function(PostFailure postFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Post> posts)? loadSuccess,
    TResult? Function(PostFailure postFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Post> posts)? loadSuccess,
    TResult Function(PostFailure postFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements PostWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Post> posts});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$PostWatcherStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$_LoadSuccess(
      null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(final List<Post> posts) : _posts = posts;

  final List<Post> _posts;
  @override
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'PostWatcherState.loadSuccess(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Post> posts) loadSuccess,
    required TResult Function(PostFailure postFailure) loadFailure,
  }) {
    return loadSuccess(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Post> posts)? loadSuccess,
    TResult? Function(PostFailure postFailure)? loadFailure,
  }) {
    return loadSuccess?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Post> posts)? loadSuccess,
    TResult Function(PostFailure postFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements PostWatcherState {
  const factory _LoadSuccess(final List<Post> posts) = _$_LoadSuccess;

  List<Post> get posts;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({PostFailure postFailure});

  $PostFailureCopyWith<$Res> get postFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$PostWatcherStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postFailure = null,
  }) {
    return _then(_$_LoadFailure(
      null == postFailure
          ? _value.postFailure
          : postFailure // ignore: cast_nullable_to_non_nullable
              as PostFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PostFailureCopyWith<$Res> get postFailure {
    return $PostFailureCopyWith<$Res>(_value.postFailure, (value) {
      return _then(_value.copyWith(postFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.postFailure);

  @override
  final PostFailure postFailure;

  @override
  String toString() {
    return 'PostWatcherState.loadFailure(postFailure: $postFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.postFailure, postFailure) ||
                other.postFailure == postFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Post> posts) loadSuccess,
    required TResult Function(PostFailure postFailure) loadFailure,
  }) {
    return loadFailure(postFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Post> posts)? loadSuccess,
    TResult? Function(PostFailure postFailure)? loadFailure,
  }) {
    return loadFailure?.call(postFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Post> posts)? loadSuccess,
    TResult Function(PostFailure postFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(postFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements PostWatcherState {
  const factory _LoadFailure(final PostFailure postFailure) = _$_LoadFailure;

  PostFailure get postFailure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
