import 'package:flutter/material.dart';

Widget name = Text(
  "Name:",
  style: TextStyle(fontSize: 25),
);
Widget unitPrice = Text(
  "Unit Price:",
  style: TextStyle(fontSize: 25),
);

Widget specialPrice = Text(
  "Special Price(sp):",
  style: TextStyle(fontSize: 25),
);

Widget parameters = Stack(
  children: [
    Positioned(top: 70, child: name),
    Positioned(top: 100, child: unitPrice),
    Positioned(top: 130, child: specialPrice),
  ],
);


