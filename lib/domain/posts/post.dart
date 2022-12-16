import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/domain/core/failures.dart';
import 'package:didkyo/domain/core/value_objects.dart';
import 'package:didkyo/domain/posts/comment.dart';
import 'package:didkyo/domain/posts/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';

@freezed
abstract class Post implements _$Post {
  const Post._();
  const factory Post({
    required UniqueId postID,
    required PostCaption postCaption,
    required PostImageURL postImage,
    required PostLocation postLocation,
    required User postUser,
    required DateTime postDateTime,
    required List<PostComment> postComments,
  }) = _Post;

  factory Post.empty() => Post(
      postID: UniqueId(),
      postCaption: PostCaption(''),
      postLocation: PostLocation(''),
      postImage: PostImageURL(''),
      postUser:
          User(id: UniqueId(), displayName: '', photoUrl: '', emailAddress: ''),
      postDateTime: DateTime.now(),
      postComments: []);

  Option<ValueFailure<dynamic>> get failureOption {
    return postImage.failureOrUnit
        .andThen(postCaption.failureOrUnit)
        .andThen(postLocation.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
