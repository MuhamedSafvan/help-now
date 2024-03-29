import 'package:flutter/material.dart';

class IncrementDecrement extends StatefulWidget {
  @override
  _IncrementDecrementState createState() => _IncrementDecrementState();
}

class _IncrementDecrementState extends State<IncrementDecrement> {
  int counter = 0;

  void incrementctr() {
    setState(() {
      counter++;
    });
    print(counter);
  }

  void decrementctr() {
    if (counter != 0) {
      setState(() {
        counter--;
      });
      print(counter);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            child: FittedBox(
              child: IconButton(
                onPressed: () {
                  decrementctr();
                },
                icon: Icon(Icons.remove),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text('$counter'),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 30,
            height: 30,
            child: FittedBox(
              child: IconButton(
                onPressed: () {
                  incrementctr();
                },
                icon: Icon(Icons.add),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class IncrementDecrement extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
    // int counter = 0;

    // void incrementctr() {
    //   counter++;
    //   print(counter);
    // }

    // void decrementctr() {
    //   if (counter != 0) {
    //     counter--;
    //     print(counter);
    //   }
    // }

    // return Container(
    //   child: Row(
    //     children: [
    //       Container(
    //         width: 30,
    //         height: 30,
    //         child: FittedBox(
    //           child: FloatingActionButton(
    //             onPressed: () {
    //               decrementctr();
    //             },
    //             child: Icon(Icons.remove),
    //           ),
    //         ),
    //       ),
    //       SizedBox(
    //         width: 10,
    //       ),
    //       Text('$counter'),
    //       SizedBox(
    //         width: 10,
    //       ),
    //       Container(
    //         width: 30,
    //         height: 30,
    //         child: FittedBox(
    //           child: FloatingActionButton(
    //             onPressed: () {
    //               incrementctr();
    //             },
    //             child: Icon(Icons.add),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
//   }
// }
