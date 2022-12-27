import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:didkyo/domain/posts/i_post_repository.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/domain/posts/post_failure.dart';
import 'package:didkyo/domain/posts/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'post_form_bloc.freezed.dart';
part 'post_form_event.dart';
part 'post_form_state.dart';

@injectable
class PostFormBloc extends Bloc<PostFormEvent, PostFormState> {
  final IPostRepository _postRepository;
  @factoryMethod
  PostFormBloc(this._postRepository);
  @override
  PostFormState get initialState => PostFormState.initial();

  @override
  Stream<PostFormState> mapEventToState(PostFormEvent event) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialPostData.fold(
            () => state,
            (initialPost) => state.copyWith(
                  post: initialPost,
                  isEditing: true,
                ));
      },
      captionChanged: (e) async* {
        yield state.copyWith(
          post: state.post.copyWith(postCaption: PostCaption(e.postCap)),
          savePostFailureOrSuccessOption: none(),
        );
      },
      imageChanged: (e) async* {
        yield state.copyWith(
          post: state.post.copyWith(postImage: PostImageURL(e.postImagePath)),
          savePostFailureOrSuccessOption: none(),
        );
      },
      locationChanged: (e) async* {
        yield state.copyWith(
          post: state.post.copyWith(postLocation: PostLocation(e.postLoc)),
          savePostFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<PostFailure, Unit>? failureOrSuccess;
        yield state.copyWith(
          isSaving: true,
          savePostFailureOrSuccessOption: none(),
        );
        if (state.post.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _postRepository.updatePost(state.post)
              : await _postRepository.createPost(state.post);
        }
        yield state.copyWith(
            isSaving: false,
            showErrorMessages: true,
            savePostFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
    );
  }
}
