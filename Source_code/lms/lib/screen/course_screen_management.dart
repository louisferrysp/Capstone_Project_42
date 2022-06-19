import 'package:flutter/material.dart';
import 'package:lms/screen/course_screen_active.dart';
import 'package:lms/screen/course_screen_past.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Navigator(
      onGenerateRoute: (settings) {
        Widget body = DashBoardCourseActiveScreen();
        if (settings.name == 'dashboard_past_screen') {
          body = DashBoardCoursePastScreen();
        }
        return MaterialPageRoute(builder: (context) => body);
      },
    ));
  }
}
