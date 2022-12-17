import 'package:bloc/bloc.dart';
import 'package:didkyo/domain/posts/i_post_repository.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/domain/posts/post_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'post_actor_bloc.freezed.dart';
part 'post_actor_event.dart';
part 'post_actor_state.dart';

@injectable
class PostActorBloc extends Bloc<PostActorEvent, PostActorState> {
  final IPostRepository _postRepository;
  @factoryMethod
  PostActorBloc(this._postRepository);
  @override
  PostActorState get initialState => const PostActorState.initial();

  @override
  Stream<PostActorState> mapEventToState(PostActorEvent event) async* {
    yield const PostActorState.actionInProgress();
    final possibleFailure = await _postRepository.deletePost(event.post);
    yield possibleFailure.fold((f) => PostActorState.deleteFailure(f),
        (_) => const PostActorState.deleteSuccess());
  }
}
