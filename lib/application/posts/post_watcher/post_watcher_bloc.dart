import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:didkyo/domain/posts/i_post_repository.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/domain/posts/post_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'post_watcher_bloc.freezed.dart';
part 'post_watcher_event.dart';
part 'post_watcher_state.dart';

@injectable
class PostWatcherBloc extends Bloc<PostWatcherEvent, PostWatcherState> {
  final IPostRepository _iPostRepository;
  StreamSubscription<Either<PostFailure, List<Post>>>? _postStreamSubscription;
  @factoryMethod
  PostWatcherBloc(this._iPostRepository);

  @override
  PostWatcherState get initialState => const PostWatcherState.initial();

  @override
  Stream<PostWatcherState> mapEventToState(PostWatcherEvent event) async* {
    yield* event.map(watchGlobalStarted: (e) async* {
      try {
        yield const PostWatcherState.loadInProgress();
        await _postStreamSubscription?.cancel();
        _postStreamSubscription = _iPostRepository.watchGlobalPosts().listen(
            (failureOrPosts) =>
                add(PostWatcherEvent.postsReceived(failureOrPosts)));
      } catch (e) {
        log(e.toString());
      }
    }, watchAllStarted: (e) async* {
      try {
        yield const PostWatcherState.loadInProgress();
        await _postStreamSubscription?.cancel();
        _postStreamSubscription = _iPostRepository
            .watchUserAllPosts(e.userId)
            .listen((failureOrPosts) =>
                add(PostWatcherEvent.postsReceived(failureOrPosts)));
      } catch (e) {
        log(e.toString());
      }
    }, watchLocationSpecificStarted: (e) async* {
      yield const PostWatcherState.loadInProgress();
      await _postStreamSubscription?.cancel();
      _postStreamSubscription = _iPostRepository
          .watchUserLocationSpecificPosts(e.selectedLocation)
          .listen((failureOrPosts) =>
              add(PostWatcherEvent.postsReceived(failureOrPosts)));
    }, postsReceived: (e) async* {
      try {
        yield e.failureOrPosts.fold((f) => PostWatcherState.loadFailure(f),
            (posts) => PostWatcherState.loadSuccess(posts));
      } catch (e) {
        log(e.toString());
      }
    });
  }

  @override
  Future<void> close() async {
    await _postStreamSubscription?.cancel();
    return super.close();
  }
}
