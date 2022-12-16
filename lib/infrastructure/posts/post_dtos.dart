import 'package:didkyo/domain/posts/comment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/auth/firebase_user_mapper.dart';

part 'post_dtos.freezed.dart';
part 'post_dtos.g.dart';

@freezed
abstract class CommentDTO with _$CommentDTO {
  const factory CommentDTO(
      {required String commentID,
      required String commentMessage,
      required DateTime commentDateTime,
      required Map<String, dynamic> commentUser}) = _CommentDTO;

  factory CommentDTO.fromDomain(PostComment comment) {
    return CommentDTO(
        commentID: comment.commentID.getOrCrash(),
        commentMessage: comment.commentMessage.getOrCrash(),
        commentDateTime: comment.commentDateTime,
        commentUser: FirebaseUserDomainX.userToMap(comment.commentUser));
  }
}
