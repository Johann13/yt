// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vision.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _VisionClient implements VisionClient {
  _VisionClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://vision.googleapis.com/v1';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<AnnotatedResponses> annotate(
      authorization, contentType, params) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(params);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AnnotatedResponses>(Options(
                method: 'POST',
                headers: <String, dynamic>{
                  r'Authorization': authorization,
                  r'Content-Type': contentType
                },
                extra: _extra,
                contentType: contentType)
            .compose(_dio.options, '/images:annotate',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AnnotatedResponses.fromJson(_result.data!);
    return value;
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
