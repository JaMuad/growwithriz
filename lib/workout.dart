import 'package:flutter/material.dart';

class workout extends StatefulWidget {
  const workout({Key? key}) : super(key: key);

  @override
  State<workout> createState() => _workoutState();
}

class _workoutState extends State<workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bulky Season"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.white,

      


    );
  }
}
