import 'package:flutter/material.dart';

import 'myapp.dart';


class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => MainApp())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,

          children: <Widget>[
            Text("GrowthWithBiz", style: new TextStyle(fontSize: 40),
              selectionColor: Colors.green,),

            Icon(Icons.rocket_launch, size: 40.0, color: Colors.green,)
          ],
        ),
      ),
    );
  }}