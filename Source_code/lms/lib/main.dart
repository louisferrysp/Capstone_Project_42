import 'package:flutter/material.dart';
import 'package:lms/screen/login_screen.dart';
import 'package:lms/screen/regis_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'regis',
    routes: {
      'regis': (context) => const RegisScreen(),
      'login': (context) => const LoginScreen(),
    },
  ));
}
