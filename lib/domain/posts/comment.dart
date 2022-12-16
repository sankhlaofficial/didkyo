import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/domain/core/failures.dart';
import 'package:didkyo/domain/core/value_objects.dart';
import 'package:didkyo/domain/posts/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';

@freezed
abstract class PostComment implements _$PostComment {
  const PostComment._();
  const factory PostComment({
    required UniqueId commentID,
    required PostCommentMessage commentMessage,
    required DateTime commentDateTime,
    required User commentUser,
  }) = _PostComment;

  factory PostComment.empty() => PostComment(
        commentID: UniqueId(),
        commentMessage: PostCommentMessage(''),
        commentDateTime: DateTime.now(),
        commentUser: User(
            id: UniqueId(), displayName: '', photoUrl: '', emailAddress: ''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return commentMessage.value.fold((f) => some(f), (_) => none());
  }
}