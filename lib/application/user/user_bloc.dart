import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:didkyo/domain/auth/i_auth_facade.dart';
import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  Option<User>? receivedUser;
  @factoryMethod
  UserBloc();
  @override
  UserState get initialState => const UserState.initial();

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    yield* event.map(
      watchUserStarted: (e) async* {
        yield const UserState.loadInProgress();
        final userOption = await getIt<IAuthFacade>().getCurrentUser();
        final user = userOption;

        add(UserEvent.userReceived(user));
      },
      userReceived: (e) async* {
        yield UserState.loadSuccess(e.user);
      },
    );
  }
}
