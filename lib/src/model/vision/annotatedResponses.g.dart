// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annotatedResponses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnnotatedResponses _$AnnotatedResponsesFromJson(Map<String, dynamic> json) {
  return AnnotatedResponses(
    responses: (json['responses'] as List<dynamic>)
        .map((e) => AnnotatedResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$AnnotatedResponsesToJson(AnnotatedResponses instance) =>
    <String, dynamic>{
      'responses': instance.responses.map((e) => e.toJson()).toList(),
    };
