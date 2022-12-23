// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserSettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User initialUserData) initialized,
    required TResult Function(String newName) nameChanged,
    required TResult Function(String newImagePath) imageChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User initialUserData)? initialized,
    TResult? Function(String newName)? nameChanged,
    TResult? Function(String newImagePath)? imageChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User initialUserData)? initialized,
    TResult Function(String newName)? nameChanged,
    TResult Function(String newImagePath)? imageChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_PostSaved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_PostSaved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_PostSaved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingsEventCopyWith<$Res> {
  factory $UserSettingsEventCopyWith(
          UserSettingsEvent value, $Res Function(UserSettingsEvent) then) =
      _$UserSettingsEventCopyWithImpl<$Res, UserSettingsEvent>;
}

/// @nodoc
class _$UserSettingsEventCopyWithImpl<$Res, $Val extends UserSettingsEvent>
    implements $UserSettingsEventCopyWith<$Res> {
  _$UserSettingsEventCopyWithImpl(this._value, this._then);

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
  $Res call({User initialUserData});

  $UserCopyWith<$Res> get initialUserData;
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$UserSettingsEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialUserData = null,
  }) {
    return _then(_$_Initialized(
      null == initialUserData
          ? _value.initialUserData
          : initialUserData // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get initialUserData {
    return $UserCopyWith<$Res>(_value.initialUserData, (value) {
      return _then(_value.copyWith(initialUserData: value));
    });
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialUserData);

  @override
  final User initialUserData;

  @override
  String toString() {
    return 'UserSettingsEvent.initialized(initialUserData: $initialUserData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.initialUserData, initialUserData) ||
                other.initialUserData == initialUserData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialUserData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User initialUserData) initialized,
    required TResult Function(String newName) nameChanged,
    required TResult Function(String newImagePath) imageChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialUserData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User initialUserData)? initialized,
    TResult? Function(String newName)? nameChanged,
    TResult? Function(String newImagePath)? imageChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialUserData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User initialUserData)? initialized,
    TResult Function(String newName)? nameChanged,
    TResult Function(String newImagePath)? imageChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialUserData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_PostSaved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_PostSaved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_PostSaved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements UserSettingsEvent {
  const factory _Initialized(final User initialUserData) = _$_Initialized;

  User get initialUserData;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NameChangedCopyWith<$Res> {
  factory _$$_NameChangedCopyWith(
          _$_NameChanged value, $Res Function(_$_NameChanged) then) =
      __$$_NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String newName});
}

/// @nodoc
class __$$_NameChangedCopyWithImpl<$Res>
    extends _$UserSettingsEventCopyWithImpl<$Res, _$_NameChanged>
    implements _$$_NameChangedCopyWith<$Res> {
  __$$_NameChangedCopyWithImpl(
      _$_NameChanged _value, $Res Function(_$_NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newName = null,
  }) {
    return _then(_$_NameChanged(
      null == newName
          ? _value.newName
          : newName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.newName);

  @override
  final String newName;

  @override
  String toString() {
    return 'UserSettingsEvent.nameChanged(newName: $newName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameChanged &&
            (identical(other.newName, newName) || other.newName == newName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      __$$_NameChangedCopyWithImpl<_$_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User initialUserData) initialized,
    required TResult Function(String newName) nameChanged,
    required TResult Function(String newImagePath) imageChanged,
    required TResult Function() saved,
  }) {
    return nameChanged(newName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User initialUserData)? initialized,
    TResult? Function(String newName)? nameChanged,
    TResult? Function(String newImagePath)? imageChanged,
    TResult? Function()? saved,
  }) {
    return nameChanged?.call(newName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User initialUserData)? initialized,
    TResult Function(String newName)? nameChanged,
    TResult Function(String newImagePath)? imageChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(newName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_PostSaved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_PostSaved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_PostSaved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements UserSettingsEvent {
  const factory _NameChanged(final String newName) = _$_NameChanged;

  String get newName;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImageChangedCopyWith<$Res> {
  factory _$$_ImageChangedCopyWith(
          _$_ImageChanged value, $Res Function(_$_ImageChanged) then) =
      __$$_ImageChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String newImagePath});
}

/// @nodoc
class __$$_ImageChangedCopyWithImpl<$Res>
    extends _$UserSettingsEventCopyWithImpl<$Res, _$_ImageChanged>
    implements _$$_ImageChangedCopyWith<$Res> {
  __$$_ImageChangedCopyWithImpl(
      _$_ImageChanged _value, $Res Function(_$_ImageChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newImagePath = null,
  }) {
    return _then(_$_ImageChanged(
      null == newImagePath
          ? _value.newImagePath
          : newImagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImageChanged implements _ImageChanged {
  const _$_ImageChanged(this.newImagePath);

  @override
  final String newImagePath;

  @override
  String toString() {
    return 'UserSettingsEvent.imageChanged(newImagePath: $newImagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageChanged &&
            (identical(other.newImagePath, newImagePath) ||
                other.newImagePath == newImagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageChangedCopyWith<_$_ImageChanged> get copyWith =>
      __$$_ImageChangedCopyWithImpl<_$_ImageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User initialUserData) initialized,
    required TResult Function(String newName) nameChanged,
    required TResult Function(String newImagePath) imageChanged,
    required TResult Function() saved,
  }) {
    return imageChanged(newImagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User initialUserData)? initialized,
    TResult? Function(String newName)? nameChanged,
    TResult? Function(String newImagePath)? imageChanged,
    TResult? Function()? saved,
  }) {
    return imageChanged?.call(newImagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User initialUserData)? initialized,
    TResult Function(String newName)? nameChanged,
    TResult Function(String newImagePath)? imageChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(newImagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_PostSaved value) saved,
  }) {
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_PostSaved value)? saved,
  }) {
    return imageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_PostSaved value)? saved,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageChanged implements UserSettingsEvent {
  const factory _ImageChanged(final String newImagePath) = _$_ImageChanged;

  String get newImagePath;
  @JsonKey(ignore: true)
  _$$_ImageChangedCopyWith<_$_ImageChanged> get copyWith =>
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
    extends _$UserSettingsEventCopyWithImpl<$Res, _$_PostSaved>
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
    return 'UserSettingsEvent.saved()';
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
    required TResult Function(User initialUserData) initialized,
    required TResult Function(String newName) nameChanged,
    required TResult Function(String newImagePath) imageChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User initialUserData)? initialized,
    TResult? Function(String newName)? nameChanged,
    TResult? Function(String newImagePath)? imageChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User initialUserData)? initialized,
    TResult Function(String newName)? nameChanged,
    TResult Function(String newImagePath)? imageChanged,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_PostSaved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_PostSaved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_PostSaved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _PostSaved implements UserSettingsEvent {
  const factory _PostSaved() = _$_PostSaved;
}

/// @nodoc
mixin _$UserSettingsState {
  User get user => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserSettingsStateCopyWith<UserSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingsStateCopyWith<$Res> {
  factory $UserSettingsStateCopyWith(
          UserSettingsState value, $Res Function(UserSettingsState) then) =
      _$UserSettingsStateCopyWithImpl<$Res, UserSettingsState>;
  @useResult
  $Res call({User user, bool showErrorMessages, bool isEditing, bool isSaving});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserSettingsStateCopyWithImpl<$Res, $Val extends UserSettingsState>
    implements $UserSettingsStateCopyWith<$Res> {
  _$UserSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserSettingsStateCopyWith<$Res>
    implements $UserSettingsStateCopyWith<$Res> {
  factory _$$_UserSettingsStateCopyWith(_$_UserSettingsState value,
          $Res Function(_$_UserSettingsState) then) =
      __$$_UserSettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, bool showErrorMessages, bool isEditing, bool isSaving});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserSettingsStateCopyWithImpl<$Res>
    extends _$UserSettingsStateCopyWithImpl<$Res, _$_UserSettingsState>
    implements _$$_UserSettingsStateCopyWith<$Res> {
  __$$_UserSettingsStateCopyWithImpl(
      _$_UserSettingsState _value, $Res Function(_$_UserSettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
  }) {
    return _then(_$_UserSettingsState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
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
    ));
  }
}

/// @nodoc

class _$_UserSettingsState implements _UserSettingsState {
  const _$_UserSettingsState(
      {required this.user,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving});

  @override
  final User user;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;

  @override
  String toString() {
    return 'UserSettingsState(user: $user, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserSettingsState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, user, showErrorMessages, isEditing, isSaving);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserSettingsStateCopyWith<_$_UserSettingsState> get copyWith =>
      __$$_UserSettingsStateCopyWithImpl<_$_UserSettingsState>(
          this, _$identity);
}

abstract class _UserSettingsState implements UserSettingsState {
  const factory _UserSettingsState(
      {required final User user,
      required final bool showErrorMessages,
      required final bool isEditing,
      required final bool isSaving}) = _$_UserSettingsState;

  @override
  User get user;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  @JsonKey(ignore: true)
  _$$_UserSettingsStateCopyWith<_$_UserSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
