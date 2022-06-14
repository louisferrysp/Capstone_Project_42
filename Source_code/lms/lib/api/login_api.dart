import 'package:dio/dio.dart';

void main() async {
  var dio = Dio();
  final response = await dio.get('https://example.com/v1/user/register');
  print(response.data);
}
