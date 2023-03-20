import 'package:flutter/material.dart';

class books extends StatefulWidget {
  const books({Key? key}) : super(key: key);

  @override
  State<books> createState() => _booksState();
}

class _booksState extends State<books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Club"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.white,
    );
  }
}
