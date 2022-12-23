part of 'user_settings_bloc.dart';

@freezed
abstract class UserSettingsState with _$UserSettingsState {
  const factory UserSettingsState({
    required User user,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
  }) = _UserSettingsState;

  factory UserSettingsState.initial() => UserSettingsState(
        user: User(
            id: UniqueId.fromUniqueString(''),
            displayName: '',
            photoUrl: '',
            emailAddress: ''),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
      );
}
