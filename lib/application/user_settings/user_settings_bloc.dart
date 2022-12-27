import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/domain/core/value_objects.dart';
import 'package:didkyo/domain/userData/i_user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_settings_bloc.freezed.dart';
part 'user_settings_event.dart';
part 'user_settings_state.dart';

@injectable
class UserSettingsBloc extends Bloc<UserSettingsEvent, UserSettingsState> {
  final IUserRepository _userRepository;
  @factoryMethod
  UserSettingsBloc(this._userRepository);

  @override
  UserSettingsState get initialState => UserSettingsState.initial();

  @override
  Stream<UserSettingsState> mapEventToState(UserSettingsEvent event) async* {
    yield* event.map(initialized: (e) async* {
      yield state.copyWith(user: e.initialUserData);
    }, nameChanged: (e) async* {
      yield state.copyWith(user: state.user.copyWith(displayName: e.newName));
      log('FROM HERE' + state.user.toString());
    }, imageChanged: (e) async* {
      yield state.copyWith(user: state.user.copyWith(photoUrl: e.newImagePath));
    }, saved: (e) async* {
      yield state.copyWith(
        isSaving: true,
      );

      await _userRepository.updateUser(state.user);
      log("SAVED....${state.user}");

      yield state.copyWith(isSaving: false);
    });
  }
}
