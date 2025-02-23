import 'package:dio/dio.dart';

class ApiService {
  final String baseUrl;
  late Dio dio;

  ApiService({
    required this.baseUrl,
    Map<String, dynamic>? defaultHeaders,
  }) {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: defaultHeaders ?? {},
        connectTimeout: const Duration(milliseconds: 5000),
        receiveTimeout: const Duration(milliseconds: 3000),
      ),
    );
  }

  ///==================================✅✅✅✅get✅✅✅✅=======================
  Future<Response> get(
      String endpoint, {
        Map<String, dynamic>? headers,
        Map<String, dynamic>? queryParameters,
      }) async {
    Response response = await dio.get(
      endpoint,
      queryParameters: queryParameters,
      options: Options(headers: headers),
    );
    return response;
  }

  ///==================================✅✅✅✅post✅✅✅✅=======================
  Future<Response> post(
      String endpoint, {
        dynamic data,
        Map<String, dynamic>? headers,
      }) async {
    Response response = await dio.post(
      endpoint,
      data: data,
      options: Options(headers: headers),
    );
    return response;
  }

  ///==================================✅✅✅✅patch✅✅✅✅=======================
  Future<Response> patch(
      String endpoint, {
        dynamic data,
        Map<String, dynamic>? headers,
      }) async {
    Response response = await dio.patch(
      endpoint,
      data: data,
      options: Options(headers: headers),
    );
    return response;
  }

  ///==================================✅✅✅✅multipart✅✅✅✅=======================
  Future<Response> multipart({
    required String endpoint,
    required Map<String, dynamic> fields,
    required String fileKey,
    required String filePath,
    Map<String, dynamic>? headers,
  }) async {
    FormData formData = FormData.fromMap({
      ...fields,
      fileKey: await MultipartFile.fromFile(filePath),
    });
    Response response = await dio.post(
      endpoint,
      data: formData,
      options: Options(
        headers: headers,
        contentType: 'multipart/form-data',
      ),
    );
    return response;
  }
}
