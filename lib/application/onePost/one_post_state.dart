part of 'one_post_bloc.dart';

abstract class OnePostState extends Equatable {
  const OnePostState();
  @override
  List<Object> get props => [];
}

class OnePostLoading extends OnePostState {}

class OnePostLoaded extends OnePostState {
  final Post post;

  const OnePostLoaded({required this.post});
  @override
  List<Object> get props => [post];
}
