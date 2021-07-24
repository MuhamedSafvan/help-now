import 'package:flutter/material.dart';
import 'package:helpnow/widgets/parameters.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget listData = Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height / 5,
    color: Colors.white54,
    child: parameters);
    Widget divider = Divider(height: 2,);
    return Scaffold(
      appBar: AppBar(
        title: Text("Help Now"),
      ),
      body: Container(
        child: ListView(
          children: [
            listData,
            divider,
            listData,
            divider,
            listData,
            divider,
            listData,
            divider,
            listData,
            divider
          ],
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey,
      ),
    );
  }
}
