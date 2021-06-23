// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oauth.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _OAuthClient implements OAuthClient {
  _OAuthClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://accounts.google.com/o/oauth2';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Token> getToken(params) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(params);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Token>(Options(
                method: 'POST',
                headers: <String, dynamic>{
                  r'Content-Type': 'application/x-www-form-urlencoded'
                },
                extra: _extra,
                contentType: 'application/x-www-form-urlencoded')
            .compose(_dio.options, '/token',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Token.fromJson(_result.data!);
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
