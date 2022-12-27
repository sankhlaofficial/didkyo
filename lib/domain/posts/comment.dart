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
    required String commentUserId,
  }) = _PostComment;

  factory PostComment.empty() => PostComment(
      commentID: UniqueId(),
      commentMessage: PostCommentMessage(''),
      commentDateTime: DateTime.now(),
      commentUserId: "");

  Option<ValueFailure<dynamic>> get failureOption {
    return commentMessage.value.fold((f) => some(f), (_) => none());
  }
}
