import 'package:flutter/material.dart';
import 'Detail_screen.dart';

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("Sec"),
      ),
      body: Center(
        child: FlatButton(child: Text("Back to first screen"),
        onPressed: (){
          Navigator.pop(context);
        },),
      ),
    );
  }
}