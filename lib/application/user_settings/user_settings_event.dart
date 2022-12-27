part of 'user_settings_bloc.dart';

@freezed
abstract class UserSettingsEvent with _$UserSettingsEvent {
  const factory UserSettingsEvent.initialized(User initialUserData) =
      _Initialized;
  const factory UserSettingsEvent.nameChanged(String newName) = _NameChanged;
  const factory UserSettingsEvent.imageChanged(String newImagePath) =
      _ImageChanged;

  const factory UserSettingsEvent.saved() = _PostSaved;
}
