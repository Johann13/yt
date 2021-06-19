// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ChatClient implements ChatClient {
  _ChatClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://youtube.googleapis.com/youtube/v3';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<LiveChatMessageListResponse> list(
      authorization, accept, parts, liveChatId,
      {hl, maxResults, pageToken, profileImageSize}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'part': parts,
      r'liveChatId': liveChatId,
      r'hl': hl,
      r'maxResults': maxResults,
      r'pageToken': pageToken,
      r'profileImageSize': profileImageSize
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<LiveChatMessageListResponse>(Options(
                method: 'GET',
                headers: <String, dynamic>{
                  r'Authorization': authorization,
                  r'Accept': accept
                },
                extra: _extra)
            .compose(_dio.options, '/liveChat/messages',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = LiveChatMessageListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<LiveChatMessage> insert(
      authorization, accept, contentType, part, data) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'part': part};
    final _data = <String, dynamic>{};
    _data.addAll(data);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<LiveChatMessage>(Options(
                method: 'POST',
                headers: <String, dynamic>{
                  r'Authorization': authorization,
                  r'Accept': accept,
                  r'Content-Type': contentType
                },
                extra: _extra,
                contentType: contentType)
            .compose(_dio.options, '/liveChat/messages',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = LiveChatMessage.fromJson(_result.data!);
    return value;
  }

  @override
  Future<void> delete(authorization, accept, id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'id': id};
    final _data = <String, dynamic>{};
    await _dio.fetch<void>(_setStreamType<void>(Options(
            method: 'DELETE',
            headers: <String, dynamic>{
              r'Authorization': authorization,
              r'Accept': accept
            },
            extra: _extra)
        .compose(_dio.options, '/liveChat/messages',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
