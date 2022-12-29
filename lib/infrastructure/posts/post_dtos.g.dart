// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostDTO _$$_PostDTOFromJson(Map<String, dynamic> json) => _$_PostDTO(
      postCaption: json['postCaption'] as String,
      postID: json['postID'] as String,
      postImageURL: json['postImageURL'] as String,
      postLocation: json['postLocation'] as String,
      postUserId: json['postUserId'] as String,
      postDateTime: DateTime.parse(json['postDateTime'] as String),
      postLikes: json['postLikes'] as List<dynamic>,
      postViews: json['postViews'] as List<dynamic>,
      postSavedBy: json['postSavedBy'] as List<dynamic>,
      postComments: (json['postComments'] as List<dynamic>?)
          ?.map((e) => CommentDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PostDTOToJson(_$_PostDTO instance) =>
    <String, dynamic>{
      'postCaption': instance.postCaption,
      'postID': instance.postID,
      'postImageURL': instance.postImageURL,
      'postLocation': instance.postLocation,
      'postUserId': instance.postUserId,
      'postDateTime': instance.postDateTime.toIso8601String(),
      'postLikes': instance.postLikes,
      'postViews': instance.postViews,
      'postSavedBy': instance.postSavedBy,
      'postComments': instance.postComments,
    };

_$_CommentDTO _$$_CommentDTOFromJson(Map<String, dynamic> json) =>
    _$_CommentDTO(
      commentID: json['commentID'] as String,
      commentMessage: json['commentMessage'] as String,
      commentDateTime: DateTime.parse(json['commentDateTime'] as String),
      commentUserId: json['commentUserId'] as String,
      commentLikes: json['commentLikes'] as List<dynamic>,
      commentReplies: json['commentReplies'] as List<dynamic>,
    );

Map<String, dynamic> _$$_CommentDTOToJson(_$_CommentDTO instance) =>
    <String, dynamic>{
      'commentID': instance.commentID,
      'commentMessage': instance.commentMessage,
      'commentDateTime': instance.commentDateTime.toIso8601String(),
      'commentUserId': instance.commentUserId,
      'commentLikes': instance.commentLikes,
      'commentReplies': instance.commentReplies,
    };
