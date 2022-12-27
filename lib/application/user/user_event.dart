part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.watchUserStarted() = _WatchUserStarted;

  const factory UserEvent.userReceived(User user) = _UserReceived;
}
