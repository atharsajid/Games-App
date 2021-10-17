import 'package:flutter/material.dart';

Color primarycolor = Colors.white;
Color focuscolor = Colors.black87;

List<BoxShadow> shadowlist = [
  BoxShadow(
      color: Colors.grey.shade300, blurRadius: 30, offset: const Offset(0, 10)),
];

List<Map> categories = [
  {'name': 'Role Playing', 'iconPath': 'images/arcade.png'},
  {'name': 'Epic Games', 'iconPath': 'images/epic.png'},
  {'name': 'Pubg', 'iconPath': 'images/pubg.png'},
  {'name': 'Mario', 'iconPath': 'images/mario.png'},
  {'name': 'Grand Theft Auto', 'iconPath': 'images/gta.png'},
];

final heading = TextStyle(
  color: primarycolor,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

final input = OutlineInputBorder(
  borderRadius: BorderRadius.circular(25),
  borderSide: BorderSide(color: primarycolor, width: 2),
);

const labeltext = TextStyle(
  color: Colors.grey,
  fontSize: 14,
);

const cattext =
    TextStyle(color: Colors.white, fontSize: 14,
    
    );
