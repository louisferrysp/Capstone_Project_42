import 'package:flutter/material.dart';

class EditAkunScreen extends StatefulWidget {
  const EditAkunScreen({Key? key}) : super(key: key);

  @override
  State<EditAkunScreen> createState() => _AkunScreenState();
}

class _AkunScreenState extends State<EditAkunScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Edit Akun Screen'),
      ),
    );
  }
}
