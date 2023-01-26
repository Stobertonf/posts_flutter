import 'dart:developer';
import 'package:dio/dio.dart';

class LogInterceptor implements InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log("REQ- [${options.method}]${options.path}");
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log("RES- [${response.statusCode}]${response.requestOptions.path}");
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log("ERROR- [${err.type}]${err.message}");
    handler.reject(err);
  }
}
