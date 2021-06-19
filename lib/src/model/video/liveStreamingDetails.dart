import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'liveStreamingDetails.g.dart';

@JsonSerializable()
class LiveStreamingDetails {
  final DateTime actualStartTime;
  final DateTime actualEndTime;
  final DateTime scheduledStartTime;
  final DateTime scheduledEndTime;
  final int concurrentViewers;
  final String? activeLiveChatId;

  LiveStreamingDetails(
      {required this.actualStartTime,
      required this.actualEndTime,
      required this.scheduledStartTime,
      required this.scheduledEndTime,
      required this.concurrentViewers,
      this.activeLiveChatId});

  factory LiveStreamingDetails.fromJson(Map<String, dynamic> json) =>
      _$LiveStreamingDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$LiveStreamingDetailsToJson(this);

  @override
  String toString() => jsonEncode(toJson());
}
