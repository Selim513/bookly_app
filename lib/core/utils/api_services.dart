import 'dart:convert';

import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;
  final String _BaseUrl = 'https://www.googleapis.com/books/v1/';

  ApiServices(this.dio);

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var respone = await dio.get('$base64Url$endpoint');
    return respone.data;
  }
}
