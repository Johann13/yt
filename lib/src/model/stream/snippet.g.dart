// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snippet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Snippet _$SnippetFromJson(Map<String, dynamic> json) {
  return Snippet(
    publishedAt: DateTime.parse(json['publishedAt'] as String),
    channelId: json['channelId'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    isDefaultStream: json['isDefaultStream'] as bool,
  );
}

Map<String, dynamic> _$SnippetToJson(Snippet instance) => <String, dynamic>{
      'publishedAt': instance.publishedAt.toIso8601String(),
      'channelId': instance.channelId,
      'title': instance.title,
      'description': instance.description,
      'isDefaultStream': instance.isDefaultStream,
    };
