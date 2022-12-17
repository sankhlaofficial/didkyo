part of 'post_watcher_bloc.dart';

@freezed
abstract class PostWatcherState with _$PostWatcherState {
  const factory PostWatcherState.initial() = _Initial;
  const factory PostWatcherState.loadInProgress() = _LoadInProgress;
  const factory PostWatcherState.loadSuccess(List<Post> posts) = _LoadSuccess;
  const factory PostWatcherState.loadFailure(PostFailure postFailure) =
      _LoadFailure;
}
