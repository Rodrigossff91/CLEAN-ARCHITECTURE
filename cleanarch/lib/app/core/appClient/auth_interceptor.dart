import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // pegar token

    options.headers[''] = 'Bearer  + token';

    handler.next(options);
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response!.statusCode == 401) {
    } else {
      handler.next(err);
    }
    super.onError(err, handler);
  }
}
