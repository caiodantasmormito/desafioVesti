// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GerenciadorServico.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _GerenciadorServico implements GerenciadorServico {
  _GerenciadorServico(this._dio, {this.baseUrl}) {
    baseUrl ??=
        'https://us-central1-app-do-aluno-unificado.cloudfunctions.net/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<String> pegarDados() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<String>(_setStreamType<String>(
        Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
            .compose(_dio.options, 'https://testvesti.herokuapp.com/catalog',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!;
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
