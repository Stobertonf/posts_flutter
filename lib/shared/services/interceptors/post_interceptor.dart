import 'package:dio/dio.dart';

class PostInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.requestOptions.path == "/photos") {
      final data = (response.data as List).sublist(0, 20);
      final newData = data
          .map((e) => {
                "title": e['title'].toString().substring(0, 5),
                "tags": ["Android"],
                "readTime": "5 min",
                "photoUrl": e["url"],
                "hasReadLater": false,
                "author": {
                  "id": "id",
                  "name": "Augusto",
                  "profileUrl": "https://picsum.photos/100/100"
                }
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
