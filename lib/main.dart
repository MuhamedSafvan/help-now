import 'package:flutter/material.dart';
import 'package:helpnow/widgets/counters.dart';
import 'dart:convert';
import 'package:http/http.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Help Now',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _items = [];
  // Fetch content from the json file
  Future<void> readJson() async {
    Uri uri =
        Uri.parse("https://mocki.io/v1/26ca1ca6-332a-46fe-9df8-392d87a0ecf2");
    var response = await get(uri);
    final data = await json.decode(response.body);
    return data;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Help Now',
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: FutureBuilder(
              future: readJson(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  Map<String, dynamic>? map =
                      snapshot.data as Map<String, dynamic>;
                  List list = map["product_list"];
                  return ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${list[index]["name"]}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text("Unit Price: "
                                    "${list[index]["unitprice"]}"),
                                Text("Special Price: " "${list[index]["sp"]}"),
                                SizedBox(height: 10,),
                                IncrementDecrement(),
                              ],
                            ),
                          ),
                        );
                      });
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              })),
    );
  }
}
