import 'package:flutter/material.dart';
import 'Detail_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First"),
      ),
      body: Center(
        child: FlatButton(
          child: Text("Go to Detail"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(
                          title: "Hello", // sent Data "hello" to Detail
                        )));
          },
        ),
      ),
    );
  }
}
