import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/domain/core/value_objects.dart';
import 'package:didkyo/domain/userData/i_user_repository.dart';
import 'package:flutter/material.dart';
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
    }, bioChanged: (e) async* {
      yield state.copyWith(user: state.user.copyWith(bio: e.newBio));
    }, imageChanged: (e) async* {
      yield state.copyWith(user: state.user.copyWith(photoUrl: e.newImagePath));
    }, saved: (e) async* {
      yield state.copyWith(
        isSaving: true,
      );

      await _userRepository.updateUser(state.user).whenComplete(() {
        ScaffoldMessenger.of(e.context).showSnackBar(SnackBar(
            behavior: SnackBarBehavior.floating,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            backgroundColor: Theme.of(e.context).scaffoldBackgroundColor,
            margin: const EdgeInsets.all(30),
            content: Text('Profile Updated Successfully',
                style: Theme.of(e.context).textTheme.titleLarge)));
      }).catchError((error) {
        ScaffoldMessenger.of(e.context).showSnackBar(SnackBar(
            behavior: SnackBarBehavior.floating,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            backgroundColor: Theme.of(e.context).scaffoldBackgroundColor,
            margin: const EdgeInsets.all(30),
            content: Text(error.toString(),
                style: Theme.of(e.context).textTheme.titleLarge)));
      });

      log("SAVED....${state.user}");

      yield state.copyWith(isSaving: false, saveSuccess: true);
    });
  }
}
