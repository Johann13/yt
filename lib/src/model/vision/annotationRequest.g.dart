// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annotationRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnnotationRequest _$AnnotationRequestFromJson(Map<String, dynamic> json) {
  return AnnotationRequest(
    image: Image.fromJson(json['image'] as Map<String, dynamic>),
    features: (json['features'] as List<dynamic>)
        .map((e) => Feature.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$AnnotationRequestToJson(AnnotationRequest instance) =>
    <String, dynamic>{
      'image': instance.image.toJson(),
      'features': instance.features.map((e) => e.toJson()).toList(),
    };
