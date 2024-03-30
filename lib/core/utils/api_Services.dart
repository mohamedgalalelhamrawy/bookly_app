 

 import 'package:dio/dio.dart';

class ApiServices {
  final baseurl = "https://www.googleapis.com/books/v1/";
  final Dio dio;
   ApiServices(this.dio);
  Future<Map<String,dynamic>> get ({required String endpoints}) async{
    var response = await dio.get('$baseurl$endpoints');
      return response.data;
  }
 }