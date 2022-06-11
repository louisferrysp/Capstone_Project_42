import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashBoardCoursePastScreen extends StatefulWidget {
  const DashBoardCoursePastScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardCoursePastScreen> createState() =>
      _DashBoardCourseScreenState();
}

class _DashBoardCourseScreenState extends State<DashBoardCoursePastScreen> {
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
                  onPressed: () {
                    Navigator.pushNamed(context, 'dashboard_active_screen');
                  },
                  child: const Text(
                    'Active Course',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Past Course',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all(Colors.black)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
