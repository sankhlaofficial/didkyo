part of 'post_watcher_bloc.dart';

@freezed
abstract class PostWatcherEvent with _$PostWatcherEvent {
  const factory PostWatcherEvent.watchGlobalStarted() = _WatchGlobalStarted;
  const factory PostWatcherEvent.watchAllStarted(String userId) =
      _WatchAllStarted;
  const factory PostWatcherEvent.watchLocationSpecificStarted(
      String selectedLocation) = _WatchLocationSpecificStarted;
  const factory PostWatcherEvent.postsReceived(
      Either<PostFailure, List<Post>> failureOrPosts) = _PostsReceived;
}
