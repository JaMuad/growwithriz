import 'package:flutter/material.dart';

class courses extends StatefulWidget {
  const courses({Key? key}) : super(key: key);

  @override
  State<courses> createState() => _coursesState();
}

class _coursesState extends State<courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Course"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.white,
    );
  }
}
