import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'image.dart';
import 'feature.dart';

part 'annotationRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class AnnotationRequest {
  final Image image;
  final List<Feature> features;

  AnnotationRequest({required this.image, required this.features});

  factory AnnotationRequest.fromJson(Map<String, dynamic> json) =>
      _$AnnotationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AnnotationRequestToJson(this);

  @override
  String toString() => jsonEncode(toJson());
}
