import 'package:flutter/material.dart';
import 'package:lms/screen/course_screen.dart';
import 'package:lms/screen/dashboard_course_screen_active.dart';
import 'package:lms/screen/dashboard_home_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _curIndex = 0;
  final List<Widget> _widgetOption = <Widget>[
    const DashBoardHomeScreen(),
    const CourseScreen(),
    Text('INI PROFILE'),
  ];

  void _selectItem(int index) {
    setState(() {
      _curIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOption.elementAt(_curIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, color: Colors.black),
            label: '',
          ),
        ],
        currentIndex: _curIndex,
        selectedItemColor: Colors.white,
        onTap: _selectItem,
      ),
    );
  }
}
