import 'package:dartz/dartz.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/domain/posts/post_failure.dart';

abstract class IPostRepository {
  Stream<Either<PostFailure, List<Post>>> watchUserAllPosts(String userId);
  Stream<Either<PostFailure, List<Post>>> watchGlobalPosts();
  Stream<Either<PostFailure, List<Post>>> watchUserLocationSpecificPosts(
      String selectedLocation);
  Future<Either<PostFailure, Unit>> createPost(Post post);
  Future<Either<PostFailure, Unit>> updatePost(Post post);
  Future<Either<PostFailure, Unit>> deletePost(Post post);
}
