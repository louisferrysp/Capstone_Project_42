import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashBoardCourseActiveScreen extends StatefulWidget {
  const DashBoardCourseActiveScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardCourseActiveScreen> createState() =>
      _DashBoardCourseScreenState();
}

class _DashBoardCourseScreenState extends State<DashBoardCourseActiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Active Course',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all(Colors.black)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'dashboard_past_screen');
                  },
                  child: const Text(
                    'Past Course',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
