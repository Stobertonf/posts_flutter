import 'package:dio/dio.dart';

class FollowersInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.requestOptions.path == "/users") {
      final data = response.data as List;
      final newData = data
          .map((e) => {
                'id': e['id'].toString(),
                'name': e['name'],
                'profileUrl': "https://picsum.photos/100/100",
                'createdAt': "Desde de hoje",
                'email': e['email'],
                'bio': e['username'],
              })
          .toList();
      response.data = newData;
    }
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    handler.reject(err);
  }
}
