import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'drawerscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  static const routename = "mainpage";
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: const [
            DrawerScreen(),
            OnHomeScreen(),
          ],
        ),
      ),
    );
  }
}
