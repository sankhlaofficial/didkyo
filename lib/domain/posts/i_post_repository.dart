import 'package:dartz/dartz.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/domain/posts/post_failure.dart';

abstract class IPostRepository {
  //watch all posts
//watch post for a location
//crud
  Stream<Either<PostFailure, List<Post>>> watchUserAllPosts();
  Stream<Either<PostFailure, List<Post>>> watchUserLocationSpecificPosts();
  Future<Either<PostFailure, Unit>> createPost(Post post);
  Future<Either<PostFailure, Unit>> updatePost(Post post);
  Future<Either<PostFailure, Unit>> deletePost(Post post);
}