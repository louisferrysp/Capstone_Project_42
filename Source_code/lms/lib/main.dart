import 'package:flutter/material.dart';
import 'package:lms/model/profile_model.dart';
import 'package:lms/screen/course_screen.dart';
import 'package:lms/screen/dashboard_course_screen_active.dart';
import 'package:lms/screen/dashboard_course_screen_past.dart';
import 'package:lms/screen/dashboard_screen.dart';
import 'package:lms/screen/landing_screen.dart';
import 'package:lms/screen/login_screen.dart';
import 'package:lms/screen/regis_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'landing',
    routes: {
      'landing': (context) => LandingScreen(),
      'regis': (context) => const RegisScreen(),
      'login': (context) => const LoginScreen(),
      'dashboard': (context) => const DashboardScreen(),
      'dashboard_active_screen': (context) =>
          const DashBoardCourseActiveScreen(),
      'dashboard_past_screen': (context) => const DashBoardCoursePastScreen(),
      'course_screen': (context) => CourseScreen(),
    },
  ));
}
