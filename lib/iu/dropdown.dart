import 'package:flutter/material.dart';

class Dropdown extends StatelessWidget{
  final String title;
  Dropdown({this.title}); // constuctor

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("$title Fifst"),
      ),
      body: Center(
        child: FlatButton(child: Text("Go to sec"),
        onPressed: (){
          Navigator.pushNamed(context, "/second");
        },),
      ),
    );
  }
}