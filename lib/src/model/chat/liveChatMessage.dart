import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'snippet.dart';
import 'authorDetails.dart';

part 'liveChatMessage.g.dart';

///A liveChatMessage resource represents a chat message in a YouTube live chat. The resource can contain details about several types of messages, including a newly posted text message or fan funding event.
///
///The live chat feature is enabled by default for live broadcasts and is available while the live event is active. (After the event ends, live chat is no longer available for that event.)
@JsonSerializable(explicitToJson: true)
class LiveChatMessage {
  ///Identifies the API resource's type. The value will be youtube#liveChatMessage.
  final String kind;

  ///The Etag of this resource.
  final String etag;

  ///The ID that YouTube assigns to uniquely identify the message.
  final String id;

  ///The snippet object contains core details about the chat message.
  final Snippet snippet;

  ///The authorDetails object contains additional details about the user that posted this message.
  final AuthorDetails? authorDetails;

  LiveChatMessage(
      {required this.kind,
      required this.etag,
      required this.id,
      required this.snippet,
      this.authorDetails});

  factory LiveChatMessage.fromJson(Map<String, dynamic> json) =>
      _$LiveChatMessageFromJson(json);

  Map<String, dynamic> toJson() => _$LiveChatMessageToJson(this);

  @override
  String toString() => jsonEncode(toJson());
}
