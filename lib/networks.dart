import 'package:flutter/material.dart';

class networks extends StatefulWidget {
  const networks({Key? key}) : super(key: key);

  @override
  State<networks> createState() => _networksState();
}

class _networksState extends State<networks> {

  // int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Network"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.white,


    );
  }
}
