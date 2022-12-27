import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/infrastructure/actions/actions_repository.dart';
import 'package:equatable/equatable.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ActionsRepository actionsRepository;

  ProfileBloc(this.actionsRepository);
  @override
  ProfileState get initialState => ProfileLoading();

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    if (event is LoadProfile) {
      actionsRepository.getUser(event.userID).listen((user) {
        add(UpdateProfile(user: user!));
      });
    }
    if (event is UpdateProfile) {
      log(event.user.toString());
      yield (ProfileLoaded(user: event.user));
    }
  }
}
