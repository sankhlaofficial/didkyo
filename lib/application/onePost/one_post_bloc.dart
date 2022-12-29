import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/infrastructure/actions/actions_repository.dart';
import 'package:equatable/equatable.dart';

part 'one_post_event.dart';
part 'one_post_state.dart';

class OnePostBloc extends Bloc<OnePostEvent, OnePostState> {
  final ActionsRepository actionsRepository;

  OnePostBloc(this.actionsRepository);
  @override
  OnePostState get initialState => OnePostLoading();

  @override
  Stream<OnePostState> mapEventToState(
    OnePostEvent event,
  ) async* {
    if (event is LoadOnePost) {
      actionsRepository.getPost(event.postID).listen((post) {
        add(UpdateOnePost(post: post!));
      });
    }
    if (event is UpdateOnePost) {
      log(event.post.toString());
      yield (OnePostLoaded(post: event.post));
    }
  }
}
