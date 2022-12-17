import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'post_actor_event.dart';
part 'post_actor_state.dart';

class PostActorBloc extends Bloc<PostActorEvent, PostActorState> {
  PostActorBloc() : super(PostActorInitial()) {
    on<PostActorEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
