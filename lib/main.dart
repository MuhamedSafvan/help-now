import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:helpnow/api.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

// class HomePage extends StatelessWidget {
class _HomePageState extends State<HomePage> {
  late List<Note> _notes;

  Future<List<Note>> fetchNotes() async {
    dynamic url = "https://mocki.io/v1/26ca1ca6-332a-46fe-9df8-392d87a0ecf2";
    var response = await http.get(url);
    var notes = List<Note>();

    if (response.statusCode == 200) {
      var notesJson = json.decode(response.body);
      for (var noteJson in notesJson) {
        notes.add(Note.fromJson(noteJson));
      }
    }
    return notes;
  }

  @override
  void initState() {
    fetchNotes().then((value) {
      setState(() {
        _notes.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // fetchNotes().then((value) {
    //   setState(() {
    //     _notes.addAll(value);
    //   });
    // });

    return Scaffold(
      appBar: AppBar(
        title: Text("Help Now"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: EdgeInsets.only(top: 35, bottom: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _notes[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text(_notes[index].unitPrice)
                ],
              ),
            ),
          );
        },
        itemCount: _notes.length,
      ),
      // body: Container(
      //   child: FutureBuilder(
      //       future: getData(),
      //       builder: (context, snapshot) {
      //         if (snapshot.hasData) {
      //           // return ListView.builder(
      //           //   itemCount: snapshot.data.length,
      //           //   itemBuilder: (BuildContext context, int index) {
      //           //     Map wppost = snapshot.data[index];
      //           //     return Column(
      //           //       children: [
      //           //         Text(wppost['name']['rendered']),
      //           //       ],
      //           //     );
      //           //   },
      //           // );
      //         }
      //         return CircularProgressIndicator();
      //       }),
      // ),
    );
  }
}

void setState(Null Function() param0) {}
