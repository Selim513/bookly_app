import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;
  final String BaseUrl = 'https://www.googleapis.com/books/v1/';

  ApiServices(this.dio);

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var respone = await dio.get('$BaseUrl$endpoint');
    return respone.data;
  }
}
