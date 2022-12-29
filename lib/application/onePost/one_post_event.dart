part of 'one_post_bloc.dart';

abstract class OnePostEvent extends Equatable {
  const OnePostEvent();
  @override
  List<Object> get props => [];
}

class LoadOnePost extends OnePostEvent {
  final String postID;

  const LoadOnePost({required this.postID});
  @override
  List<Object> get props => [postID];
}

class UpdateOnePost extends OnePostEvent {
  final Post post;

  const UpdateOnePost({required this.post});

  @override
  List<Object> get props => [post];
}
