// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liveChatMessage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveChatMessage _$LiveChatMessageFromJson(Map<String, dynamic> json) {
  return LiveChatMessage(
    kind: json['kind'] as String,
    etag: json['etag'] as String,
    id: json['id'] as String,
    snippet: Snippet.fromJson(json['snippet'] as Map<String, dynamic>),
    authorDetails: json['authorDetails'] == null
        ? null
        : AuthorDetails.fromJson(json['authorDetails'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LiveChatMessageToJson(LiveChatMessage instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'id': instance.id,
      'snippet': instance.snippet.toJson(),
      'authorDetails': instance.authorDetails?.toJson(),
    };
