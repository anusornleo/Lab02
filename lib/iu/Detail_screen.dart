import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget{
  final String title;
  DetailScreen({this.title}); // constuctor

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