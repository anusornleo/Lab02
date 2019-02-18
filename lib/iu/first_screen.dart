// import 'package:flutter/material.dart';
// import 'Detail_screen.dart';

// class FirstScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return FirstScreenstate();
//   }
//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     appBar: AppBar(
//   //       title: Text("First"),
//   //     ),
//   //     body: Center(
//   //       child: FlatButton(
//   //         child: Text("Go to Detail"),
//   //         onPressed: () {
//   //           Navigator.push(
//   //               context,
//   //               MaterialPageRoute(
//   //                   builder: (context) => DetailScreen(
//   //                         title: "Hello", // sent Data "hello" to Detail
//   //                       )));
//   //         },
//   //       ),
//   //     ),
//   //   );
//   // }
// }

// class FirstScreenState extends State {
//   List<String> _passengers = <String>["", "1", "2", "3", "4", "5"];

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First page'),
//       ),
//       body: Column(
//         children: <Widget>[
//           InputDecorator(
//             decoration: InputDecoration(
//               icon: Icon(Icons.person),
//               labelText: 'Passenger'
//             ),
//             child: DropdownButtonHideUnderline(
//               child: DropdownButton(
//                onChanged: (value){
//                },
//                items: _passengers.map((String value){
//                  return DropdownMenuItem <String>(
//                    child: Text(value),
//                    value: value,
//                  );
//                }).toList(),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'detail_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstScreenState();
  }
}

class FirstScreenState extends State {
  List<String> _passengers = <String>["1", "2", "3", "4", "5"];
  String _passenger = "1";

  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  final dateFormat = DateFormat("EEEE, MMMM d, yyyy 'at' h:mma");
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera),
        tooltip: 'Pick Image',
        onPressed: getImage,
      ),
      appBar: AppBar(
        title: Text('First page'),
      ),
      body: ListView(
        children: <Widget>[
          _image == null ? Text("No image") : Image.file(_image),
          InputDecorator(
            decoration: InputDecoration(
                icon: Icon(Icons.people), labelText: "Passenger"),
            isEmpty: _passenger == "",
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _passenger,
                isDense: true,
                onChanged: (String value) {
                  setState(() {
                    _passenger = value;
                  });
                },
                items: _passengers.map((String value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
              ),
            ),
          ),
          DateTimePickerFormField(
            inputType: InputType.date,
            format: DateFormat("yyyy-MM-dd"),
            decoration: InputDecoration(labelText: 'Date'),
          )
        ],
      ),
    );
  }
}
