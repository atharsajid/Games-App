import 'package:flutter/material.dart';

Color primarycolor = Colors.white;
Color focuscolor = const Color(0xff1B0321);
Color btncolor = Colors.amber;
Color menubtn = Colors.white;

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

final catext = TextStyle(
  color: primarycolor,
  fontSize: 14,
);

List<Map> gamedata = [
  {'name': 'Fortnite', 'img': 'images/fortnit.png', 'category': 'Shooting'},
  {'name': 'PUBG', 'img': 'images/pub.png', 'category': 'Battleground'},
  {
    'name': 'The Witch',
    'img': 'images/TheWitch.png',
    'category': 'RolePlaying'
  },
  {
    'name': 'Street Fighter',
    'img': 'images/street.png',
    'category': 'Fighting'
  },
  {
    'name': 'Call of Duty',
    'img': 'images/callofduty.png',
    'category': 'Shooting'
  },
  {
    'name': 'Grand Theft Auto V',
    'img': 'images/gtav.png',
    'category': 'Open World'
  },
  {
    'name': 'Final Fantasy',
    'img': 'images/girl.png',
    'category': 'RolePlaying'
  },
];
