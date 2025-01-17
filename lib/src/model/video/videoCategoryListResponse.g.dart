// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videoCategoryListResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoCategoryListResponse _$VideoCategoryListResponseFromJson(
        Map<String, dynamic> json) =>
    VideoCategoryListResponse(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      nextPageToken: json['nextPageToken'] as String?,
      prevPageToken: json['prevPageToken'] as String?,
      pageInfo: PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) => VideoCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VideoCategoryListResponseToJson(
        VideoCategoryListResponse instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'nextPageToken': instance.nextPageToken,
      'prevPageToken': instance.prevPageToken,
      'pageInfo': instance.pageInfo.toJson(),
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
