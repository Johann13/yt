// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return SearchResult(
    kind: json['kind'] as String,
    etag: json['etag'] as String,
    id: Id.fromJson(json['id'] as Map<String, dynamic>),
    snippet: json['snippet'] == null
        ? null
        : Snippet.fromJson(json['snippet'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SearchResultToJson(SearchResult instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'id': instance.id.toJson(),
      'snippet': instance.snippet?.toJson(),
    };
