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
      postDateTime: DateTime.parse(json['postDateTime'] as String),
      postUser: json['postUser'] as Map<String, dynamic>,
      postComments: (json['postComments'] as List<dynamic>)
          .map((e) => CommentDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PostDTOToJson(_$_PostDTO instance) =>
    <String, dynamic>{
      'postCaption': instance.postCaption,
      'postID': instance.postID,
      'postImageURL': instance.postImageURL,
      'postLocation': instance.postLocation,
      'postDateTime': instance.postDateTime.toIso8601String(),
      'postUser': instance.postUser,
      'postComments': instance.postComments,
    };

_$_CommentDTO _$$_CommentDTOFromJson(Map<String, dynamic> json) =>
    _$_CommentDTO(
      commentID: json['commentID'] as String,
      commentMessage: json['commentMessage'] as String,
      commentDateTime: DateTime.parse(json['commentDateTime'] as String),
      commentUser: json['commentUser'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_CommentDTOToJson(_$_CommentDTO instance) =>
    <String, dynamic>{
      'commentID': instance.commentID,
      'commentMessage': instance.commentMessage,
      'commentDateTime': instance.commentDateTime.toIso8601String(),
      'commentUser': instance.commentUser,
    };
