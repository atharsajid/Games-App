import 'package:flutter/material.dart';
import 'package:hidden_drawer/configration.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({ Key? key }) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primarycolor,
      ),
           
    );
  }
}