import 'package:flutter/material.dart';
import 'package:leoapp/iu/Detail_screen.dart';
import 'package:leoapp/iu/first_screen.dart';
import 'package:leoapp/iu/form.dart';
import 'package:leoapp/iu/second_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fucku',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: MyHomePage(),
      initialRoute: "/",
      routes: {
        // "/":(context) => MyCustomForm(),
        "/":(context) => FirstScreen(),
        // "/second":(context) => SecondScreen(),
        "/detail":(context) => DetailScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Nooooooo"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.access_alarms),
                text: "first",
              ),
              Tab(
                icon: Icon(Icons.airline_seat_flat),
                text: "Second",
              ),
              Tab(
                icon: Icon(Icons.airplay),
                text: "thrid",
              )
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          Text("1"),
          Icon(Icons.access_alarms),
          FirstPage(),
        ],),
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FirstPageState();
  }
}

class FirstPageState extends State<FirstPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
      Text("$count"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
          });
          print("count $count");
        },
      ),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   int count = 0;
//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hot"),
//       ),
//       body: Text("$count"),
//       floatingActionButton: RaisedButton(
//         child: Icon(Icons.add),
//         onPressed: (){
//           count++;
//           print("count $count");
//         },
//       ),
//     );

//   }
// }
