import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = "https://fakestoreapi.com";

  late Dio dio;

  ApiService() {
    dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        headers: {
          "accept": "*/*",
        },
        connectTimeout: const Duration(seconds: 3),
      ),
    );
  }

  Future<dynamic> get({
    required String endpoint,
  }) async {
    var response = await dio.get(
      endpoint,
    );

    return response.data;
  }
}
