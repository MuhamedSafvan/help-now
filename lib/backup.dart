// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:async';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// // class HomePage extends StatelessWidget {
// class _HomePageState extends State<HomePage> {
//   List<Note> _notes = [];

//   Future<List<Note>> fetchNotes() async {
//     String url = "https://mocki.io/v1/26ca1ca6-332a-46fe-9df8-392d87a0ecf2";
//     Uri uri = Uri.parse(url);
//     var response = await http.get(uri);
//     // var notes = List<Note>.empty(growable: true);
//     var notes = <Note>{};

//     if (response.statusCode == 200) {
//       var notesJson = json.decode(response.body);
//       for (var noteJson in notesJson) {
//         notes.add(Note.fromJson(noteJson));
//       }
//     }
//     return notes;
//   }

//   @override
//   void initState() {
//     fetchNotes().then((value) {
//       setState(() {
//         _notes.addAll(value);
//       });
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Help Now"),
//       ),
//       body: ListView.builder(
//         itemBuilder: (context, index) {
//           return Card(
//             child: Padding(
//               padding: EdgeInsets.only(top: 35, bottom: 35),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     _notes[index].name,
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
//                   ),
//                   Text(_notes[index].unitPrice)
//                 ],
//               ),
//             ),
//           );
//         },
//         itemCount: _notes.length,
//       ),
//     );
//   }
// }
// class Note {
//   late String name;
//   late String unitPrice;

//   Note(this.name, this.unitPrice);

//   Note.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     unitPrice = json['unitprice'];
//   }
// }





//last updated api.dart

// import 'package:http/http.dart' as http;
// import 'dart:convert';

// Future<List> fetchWpPosts() async {
//   String url = "https://mocki.io/v1/26ca1ca6-332a-46fe-9df8-392d87a0ecf2";
//   Uri uri = Uri.parse(url);
//   final response = await http.get(uri, headers: {"Accept": "application/json"});
//   // var convertDatatoJson = jsonDecode(response.body);
//   var convertDatatoJson = jsonDecode(response.body);

//   return convertDatatoJson;
// }


// last updated main.dart

// import 'package:flutter/material.dart';
// import 'api.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }

// printing() {
//   print("Get Out");
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Help Now"),
//       ),
//       body: Container(
//         child: FutureBuilder(
//             future: fetchWpPosts(),
//             builder: (context, snapshot) {
//               // if (snapshot.hasData) {
//               //   print("Yes");
//               // }
//               return ListView.builder(
//                 itemBuilder: (BuildContext context, int index) {
//                   // Map wppost = snapshot.data[index];
//                   return Card(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Hello",
//                             style: TextStyle(
//                                 fontSize: 22,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.blue),
//                           ),
//                           // FlatButton(
//                           //     onPressed: () {
//                           //       if (snapshot.hasData) {
//                           //         print("Yes");
//                           //       } else {
//                           //         print("No");
//                           //       }
//                           //     },
//                           //     child: Icon(Icons.sports_football))
//                           Text(snapshot.hasData
//                               ? snapshot.data['product_list'][index]['name']
//                               : SizedBox()),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//                 itemCount: 10,
//               );
//             }
//             // return CircularProgressIndicator();
//             // },
//             ),
//       ),
//     );
//   }
// }

