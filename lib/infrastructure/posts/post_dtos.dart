import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:didkyo/domain/core/value_objects.dart';
import 'package:didkyo/domain/posts/comment.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/domain/posts/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/auth/firebase_user_mapper.dart';

part 'post_dtos.freezed.dart';
part 'post_dtos.g.dart';

@freezed
abstract class PostDTO implements _$PostDTO {
  const PostDTO._();
  const factory PostDTO({
    required String postCaption,
    required String postID,
    required String postImageURL,
    required String postLocation,
    Map? postUser,
    required DateTime postDateTime,

    // required Map<String, dynamic> postUser,
    // required List<CommentDTO> postComments}
  }) = _PostDTO;

  factory PostDTO.fromDomain(Post post) {
    return PostDTO(
      postCaption: post.postCaption.getOrCrash(),
      postID: post.postID.getOrCrash(),
      postImageURL: post.postImage.getOrCrash(),
      postLocation: post.postLocation.getOrCrash(),

      postDateTime: post.postDateTime,
      // postUser: FirebaseUserDomainX.userToMap(post.postUser),
      // postComments: post.postComments
      //     .map((comment) => CommentDTO.fromDomain(comment))
      //     .toList()
    );
  }

  factory PostDTO.fromJson(Map<String, dynamic> postJSON) =>
      _$PostDTOFromJson(postJSON);

  Post toDomain() {
    return Post(
      postID: UniqueId.fromUniqueString(postID),
      postCaption: PostCaption(postCaption),
      postImage: PostImageURL(postImageURL),
      postLocation: PostLocation(postLocation),
      postUser: FirebaseUserDomainX.mapToUser(postUser),
      postDateTime: postDateTime,
      // postComments:
      //     postComments.map((commentDTO) => commentDTO.toDomain()).toList()
    );
  }

  factory PostDTO.fromFirestore(DocumentSnapshot<dynamic> snapshot) {
    return PostDTO.fromJson(snapshot.data() as Map<String, dynamic>)
        .copyWith(postID: snapshot.id);
  }
}

@freezed
abstract class CommentDTO implements _$CommentDTO {
  const CommentDTO._();
  const factory CommentDTO(
      {required String commentID,
      required String commentMessage,
      required DateTime commentDateTime,
      required String commentUserId}) = _CommentDTO;

  factory CommentDTO.fromDomain(PostComment comment) {
    return CommentDTO(
        commentID: comment.commentID.getOrCrash(),
        commentMessage: comment.commentMessage.getOrCrash(),
        commentDateTime: comment.commentDateTime,
        commentUserId: comment.commentUserId);
  }

  PostComment toDomain() {
    return PostComment(
        commentID: UniqueId.fromUniqueString(commentID),
        commentMessage: PostCommentMessage(commentMessage),
        commentDateTime: commentDateTime,
        commentUserId: commentUserId);
  }

  factory CommentDTO.fromJson(Map<String, dynamic> commentJSON) =>
      _$CommentDTOFromJson(commentJSON);
}
