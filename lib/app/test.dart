import 'package:dio/dio.dart';

void main() async {
  makeRequest();
  // final dio = Dio();
  //
  // void getHttp() async {
  //   final response = await dio.get('https://dart.dev');
  //   print(response);
  // }

//Error Handling

  // final dio = Dio();
  // dio.interceptors.add(
  //   InterceptorsWrapper(
  //     onError: (error, handler) {
  //       print('Request failed with error: ${error.message}');
  //       handler.next(error); // Continue passing the error.
  //     },
  //   ),
  // );
  //
  // final response = await dio.get('https://jsonplaceholder.typicode.com/todos/999');
  // print('Data = ${response.data}');
  // Cancellation
//   final dio = Dio();
//   final cancelToken = CancelToken();
//   final response = await dio.get('https://jsonplaceholder.typicode.com/todos/1',
//   cancelToken: cancelToken,
//   );
//   print('Data===============${response.data}');
// // অনুরোধ বাতিল করুন
//   cancelToken.cancel('Request cancelled');

  //Interceptors
  //  final dio = Dio();
  //  dio.interceptors.add(
  //    InterceptorsWrapper(
  //      onRequest: (options, handler) {
  //        options.headers['Authorization'] = 'Bearer my_token';
  //        return handler.next(options);
  //      },
  //    ),
  //  );
  //  final response = await dio.get('https://jsonplaceholder.typicode.com/todos/1');
  // print('Data===============${response.data}');

  //Get method
  // final dio = Dio();
  // final response = await dio.get('https://jsonplaceholder.typicode.com/todos/1');
  // print('Data===============${response.data}');

  //Post method
  // final dio = Dio();
  // final response = await dio.post('https://jsonplaceholder.typicode.com/posts',
  //   data: {
  //     'title': 'My post',
  //     'body': 'This is my post content',
  //     'userId': 1,
  //   },
  // );
  //  print('Data===============${response.data}');
}

final dio = Dio();

void makeRequest() async {
  try {
    final response = await dio.get('https://jsonplaceholder.typicode.com/todos/1');
    print(response.statusCode); // print the status code
    print(response.headers); // print the headers
    print(response.data); // print the response data
  } catch (e) {
    print(e);
  }
}
// void makeRequest() async {
//   try {
//     final response = await dio.get(
//       'https://jsonplaceholder.typicode.com/todos/1',
//       // queryParameters: {
//       //   'sortBy': 'createdAt',
//       //   'limit': 10,
//       // },
//       // options: Options(
//       //   headers: {
//       //     'Authorization': 'Bearer myToken',
//       //   },
//       // ),
//     );
//     print(response.data);
//   } catch (e) {
//     print(e);
//   }
// }
