part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loadInProgress() = _LoadInProgress;
  const factory UserState.loadSuccess(User user) = _LoadSuccess;
  const factory UserState.loadFailure(String failedMessage) = _LoadFailure;
}
