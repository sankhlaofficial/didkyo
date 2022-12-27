part of 'post_actor_bloc.dart';

@freezed
abstract class PostActorState with _$PostActorState {
  const factory PostActorState.initial() = _Initial;
  const factory PostActorState.actionInProgress() = _ActionInProgress;
  const factory PostActorState.deleteFailure(PostFailure postFailure) =
      _DeleteFailure;
  const factory PostActorState.deleteSuccess() = _DeleteSuccess;
}
