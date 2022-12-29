import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:didkyo/domain/core/value_objects.dart';
import 'package:didkyo/domain/posts/comment.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/domain/posts/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_dtos.freezed.dart';
part 'post_dtos.g.dart';

@freezed
abstract class PostDTO implements _$PostDTO {
  const PostDTO._();
  const factory PostDTO(
      {required String postCaption,
      required String postID,
      required String postImageURL,
      required String postLocation,
      required String postUserId,
      required DateTime postDateTime,
      required List<dynamic> postLikes,
      required List<dynamic> postViews,
      required List<dynamic> postSavedBy,
      required List<CommentDTO>? postComments}) = _PostDTO;

  factory PostDTO.fromDomain(Post post) {
    return PostDTO(
      postCaption: post.postCaption.getOrCrash(),
      postID: post.postID.getOrCrash(),
      postImageURL: post.postImage.getOrCrash(),
      postLocation: post.postLocation.getOrCrash(),
      postUserId: post.postUserId,
      postComments: post.postComments
          .map((postComment) => CommentDTO.fromDomain(postComment))
          .toList(),
      postDateTime: post.postDateTime,
      postViews: post.postViews,
      postLikes: post.postLikes,
      postSavedBy: post.postSavedBy,
      // postUser: FirebaseUserDomainX.userToMap(post.postUser!),
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
      postUserId: postUserId,
      postDateTime: postDateTime,
      postComments: postComments != null
          ? postComments!.map((commentDTO) => commentDTO.toDomain()).toList()
          : [],
      postSavedBy: postSavedBy,
      postLikes: postLikes,
      postViews: postViews,
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
  const factory CommentDTO({
    required String commentID,
    required String commentMessage,
    required DateTime commentDateTime,
    required String commentUserId,
    required List<dynamic> commentLikes,
    required List<dynamic> commentReplies,
  }) = _CommentDTO;

  factory CommentDTO.fromDomain(PostComment comment) {
    return CommentDTO(
        commentID: comment.commentID.getOrCrash(),
        commentMessage: comment.commentMessage.getOrCrash(),
        commentDateTime: comment.commentDateTime,
        commentUserId: comment.commentUserId,
        commentReplies: comment.commentReplies != null
            ? comment.commentReplies
                .map((reply) => CommentDTO.fromDomain(reply))
                .toList()
            : [],
        commentLikes: comment.commentLikes);
  }

  PostComment toDomain() {
    List<PostComment> postCommentReplies = [];
    commentReplies.forEach((element) {
      var object = PostComment(
          commentID: element['commentID'],
          commentMessage: element['commentMessage'],
          commentDateTime: element['commentDateTime'],
          commentUserId: element['commentUserId'],
          commentLikes: element['commentLikes'],
          commentReplies: element['commentReplies']);
      postCommentReplies.add(object);
    });

    return PostComment(
      commentID: UniqueId.fromUniqueString(commentID),
      commentMessage: PostCommentMessage(commentMessage),
      commentDateTime: commentDateTime,
      commentUserId: commentUserId,
      commentReplies: postCommentReplies,
      commentLikes: commentLikes,
    );
  }

  factory CommentDTO.fromJson(Map<String, dynamic> commentJSON) =>
      _$CommentDTOFromJson(commentJSON);
}
