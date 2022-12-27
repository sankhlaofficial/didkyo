// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnalysisEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAnalyticsStarted,
    required TResult Function(Map<String, dynamic> trendingData)
        analyticsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAnalyticsStarted,
    TResult? Function(Map<String, dynamic> trendingData)? analyticsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAnalyticsStarted,
    TResult Function(Map<String, dynamic> trendingData)? analyticsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAnalyticsStarted value)
        watchAnalyticsStarted,
    required TResult Function(_AnalyticsReceived value) analyticsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAnalyticsStarted value)? watchAnalyticsStarted,
    TResult? Function(_AnalyticsReceived value)? analyticsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAnalyticsStarted value)? watchAnalyticsStarted,
    TResult Function(_AnalyticsReceived value)? analyticsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisEventCopyWith<$Res> {
  factory $AnalysisEventCopyWith(
          AnalysisEvent value, $Res Function(AnalysisEvent) then) =
      _$AnalysisEventCopyWithImpl<$Res, AnalysisEvent>;
}

/// @nodoc
class _$AnalysisEventCopyWithImpl<$Res, $Val extends AnalysisEvent>
    implements $AnalysisEventCopyWith<$Res> {
  _$AnalysisEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WatchAnalyticsStartedCopyWith<$Res> {
  factory _$$_WatchAnalyticsStartedCopyWith(_$_WatchAnalyticsStarted value,
          $Res Function(_$_WatchAnalyticsStarted) then) =
      __$$_WatchAnalyticsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchAnalyticsStartedCopyWithImpl<$Res>
    extends _$AnalysisEventCopyWithImpl<$Res, _$_WatchAnalyticsStarted>
    implements _$$_WatchAnalyticsStartedCopyWith<$Res> {
  __$$_WatchAnalyticsStartedCopyWithImpl(_$_WatchAnalyticsStarted _value,
      $Res Function(_$_WatchAnalyticsStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WatchAnalyticsStarted implements _WatchAnalyticsStarted {
  const _$_WatchAnalyticsStarted();

  @override
  String toString() {
    return 'AnalysisEvent.watchAnalyticsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchAnalyticsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAnalyticsStarted,
    required TResult Function(Map<String, dynamic> trendingData)
        analyticsReceived,
  }) {
    return watchAnalyticsStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAnalyticsStarted,
    TResult? Function(Map<String, dynamic> trendingData)? analyticsReceived,
  }) {
    return watchAnalyticsStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAnalyticsStarted,
    TResult Function(Map<String, dynamic> trendingData)? analyticsReceived,
    required TResult orElse(),
  }) {
    if (watchAnalyticsStarted != null) {
      return watchAnalyticsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAnalyticsStarted value)
        watchAnalyticsStarted,
    required TResult Function(_AnalyticsReceived value) analyticsReceived,
  }) {
    return watchAnalyticsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAnalyticsStarted value)? watchAnalyticsStarted,
    TResult? Function(_AnalyticsReceived value)? analyticsReceived,
  }) {
    return watchAnalyticsStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAnalyticsStarted value)? watchAnalyticsStarted,
    TResult Function(_AnalyticsReceived value)? analyticsReceived,
    required TResult orElse(),
  }) {
    if (watchAnalyticsStarted != null) {
      return watchAnalyticsStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAnalyticsStarted implements AnalysisEvent {
  const factory _WatchAnalyticsStarted() = _$_WatchAnalyticsStarted;
}

/// @nodoc
abstract class _$$_AnalyticsReceivedCopyWith<$Res> {
  factory _$$_AnalyticsReceivedCopyWith(_$_AnalyticsReceived value,
          $Res Function(_$_AnalyticsReceived) then) =
      __$$_AnalyticsReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> trendingData});
}

/// @nodoc
class __$$_AnalyticsReceivedCopyWithImpl<$Res>
    extends _$AnalysisEventCopyWithImpl<$Res, _$_AnalyticsReceived>
    implements _$$_AnalyticsReceivedCopyWith<$Res> {
  __$$_AnalyticsReceivedCopyWithImpl(
      _$_AnalyticsReceived _value, $Res Function(_$_AnalyticsReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trendingData = null,
  }) {
    return _then(_$_AnalyticsReceived(
      null == trendingData
          ? _value._trendingData
          : trendingData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_AnalyticsReceived implements _AnalyticsReceived {
  const _$_AnalyticsReceived(final Map<String, dynamic> trendingData)
      : _trendingData = trendingData;

  final Map<String, dynamic> _trendingData;
  @override
  Map<String, dynamic> get trendingData {
    if (_trendingData is EqualUnmodifiableMapView) return _trendingData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_trendingData);
  }

  @override
  String toString() {
    return 'AnalysisEvent.analyticsReceived(trendingData: $trendingData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsReceived &&
            const DeepCollectionEquality()
                .equals(other._trendingData, _trendingData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_trendingData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalyticsReceivedCopyWith<_$_AnalyticsReceived> get copyWith =>
      __$$_AnalyticsReceivedCopyWithImpl<_$_AnalyticsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAnalyticsStarted,
    required TResult Function(Map<String, dynamic> trendingData)
        analyticsReceived,
  }) {
    return analyticsReceived(trendingData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAnalyticsStarted,
    TResult? Function(Map<String, dynamic> trendingData)? analyticsReceived,
  }) {
    return analyticsReceived?.call(trendingData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAnalyticsStarted,
    TResult Function(Map<String, dynamic> trendingData)? analyticsReceived,
    required TResult orElse(),
  }) {
    if (analyticsReceived != null) {
      return analyticsReceived(trendingData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAnalyticsStarted value)
        watchAnalyticsStarted,
    required TResult Function(_AnalyticsReceived value) analyticsReceived,
  }) {
    return analyticsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAnalyticsStarted value)? watchAnalyticsStarted,
    TResult? Function(_AnalyticsReceived value)? analyticsReceived,
  }) {
    return analyticsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAnalyticsStarted value)? watchAnalyticsStarted,
    TResult Function(_AnalyticsReceived value)? analyticsReceived,
    required TResult orElse(),
  }) {
    if (analyticsReceived != null) {
      return analyticsReceived(this);
    }
    return orElse();
  }
}

abstract class _AnalyticsReceived implements AnalysisEvent {
  const factory _AnalyticsReceived(final Map<String, dynamic> trendingData) =
      _$_AnalyticsReceived;

  Map<String, dynamic> get trendingData;
  @JsonKey(ignore: true)
  _$$_AnalyticsReceivedCopyWith<_$_AnalyticsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnalysisState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Map<String, dynamic> trendingData) loadSuccess,
    required TResult Function(String failedMessage) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Map<String, dynamic> trendingData)? loadSuccess,
    TResult? Function(String failedMessage)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Map<String, dynamic> trendingData)? loadSuccess,
    TResult Function(String failedMessage)? loadFailure,
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
abstract class $AnalysisStateCopyWith<$Res> {
  factory $AnalysisStateCopyWith(
          AnalysisState value, $Res Function(AnalysisState) then) =
      _$AnalysisStateCopyWithImpl<$Res, AnalysisState>;
}

/// @nodoc
class _$AnalysisStateCopyWithImpl<$Res, $Val extends AnalysisState>
    implements $AnalysisStateCopyWith<$Res> {
  _$AnalysisStateCopyWithImpl(this._value, this._then);

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
    extends _$AnalysisStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AnalysisState.initial()';
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
    required TResult Function(Map<String, dynamic> trendingData) loadSuccess,
    required TResult Function(String failedMessage) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Map<String, dynamic> trendingData)? loadSuccess,
    TResult? Function(String failedMessage)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Map<String, dynamic> trendingData)? loadSuccess,
    TResult Function(String failedMessage)? loadFailure,
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

abstract class _Initial implements AnalysisState {
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
    extends _$AnalysisStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'AnalysisState.loadInProgress()';
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
    required TResult Function(Map<String, dynamic> trendingData) loadSuccess,
    required TResult Function(String failedMessage) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Map<String, dynamic> trendingData)? loadSuccess,
    TResult? Function(String failedMessage)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Map<String, dynamic> trendingData)? loadSuccess,
    TResult Function(String failedMessage)? loadFailure,
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

abstract class _LoadInProgress implements AnalysisState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> trendingData});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$AnalysisStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trendingData = null,
  }) {
    return _then(_$_LoadSuccess(
      null == trendingData
          ? _value._trendingData
          : trendingData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(final Map<String, dynamic> trendingData)
      : _trendingData = trendingData;

  final Map<String, dynamic> _trendingData;
  @override
  Map<String, dynamic> get trendingData {
    if (_trendingData is EqualUnmodifiableMapView) return _trendingData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_trendingData);
  }

  @override
  String toString() {
    return 'AnalysisState.loadSuccess(trendingData: $trendingData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other._trendingData, _trendingData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_trendingData));

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
    required TResult Function(Map<String, dynamic> trendingData) loadSuccess,
    required TResult Function(String failedMessage) loadFailure,
  }) {
    return loadSuccess(trendingData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Map<String, dynamic> trendingData)? loadSuccess,
    TResult? Function(String failedMessage)? loadFailure,
  }) {
    return loadSuccess?.call(trendingData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Map<String, dynamic> trendingData)? loadSuccess,
    TResult Function(String failedMessage)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(trendingData);
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

abstract class _LoadSuccess implements AnalysisState {
  const factory _LoadSuccess(final Map<String, dynamic> trendingData) =
      _$_LoadSuccess;

  Map<String, dynamic> get trendingData;
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
  $Res call({String failedMessage});
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$AnalysisStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedMessage = null,
  }) {
    return _then(_$_LoadFailure(
      null == failedMessage
          ? _value.failedMessage
          : failedMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failedMessage);

  @override
  final String failedMessage;

  @override
  String toString() {
    return 'AnalysisState.loadFailure(failedMessage: $failedMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.failedMessage, failedMessage) ||
                other.failedMessage == failedMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedMessage);

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
    required TResult Function(Map<String, dynamic> trendingData) loadSuccess,
    required TResult Function(String failedMessage) loadFailure,
  }) {
    return loadFailure(failedMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Map<String, dynamic> trendingData)? loadSuccess,
    TResult? Function(String failedMessage)? loadFailure,
  }) {
    return loadFailure?.call(failedMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Map<String, dynamic> trendingData)? loadSuccess,
    TResult Function(String failedMessage)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failedMessage);
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

abstract class _LoadFailure implements AnalysisState {
  const factory _LoadFailure(final String failedMessage) = _$_LoadFailure;

  String get failedMessage;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
