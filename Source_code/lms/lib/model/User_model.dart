import 'package:dio/dio.dart';
import 'dart:convert';

class UserModel {
  String email;
  String password;

  UserModel({required this.email, required this.password});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      password: json['passowrd'],
    );
  }

  static Future<UserModel> userAPI(String email, String password) async {
    String apiURL = 'https://example.com/v1/user/login';
    var dio = Dio();
    var response = await dio.post(apiURL, data: {
      'email': email,
      'passowrd': password,
    });
    var jsonUser = json.decode(response.data);
    return UserModel.fromJson(jsonUser);
  }
}
