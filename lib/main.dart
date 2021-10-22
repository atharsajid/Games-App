import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'drawerscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children:const [
            DrawerScreen(),
            HomeScreen(),
          ],
        ),
      ),
      
    );
  }
}