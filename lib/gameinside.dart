import 'package:flutter/material.dart';
import 'package:hidden_drawer/configration.dart';
import 'package:hidden_drawer/homescreen.dart';
import 'package:hidden_drawer/main.dart';

class Gameinside extends StatefulWidget {
  static const routename = "game inside";
  const Gameinside({Key? key}) : super(key: key);

  @override
  _GameinsideState createState() => _GameinsideState();
}

class _GameinsideState extends State<Gameinside> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {OnHomeScreen.routename: (_) => OnHomeScreen()},
      home: GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.grey,
                ),
              ),
              Expanded(
                child: Container(
                  color: primarycolor,
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 65),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: primarycolor,
                    )),
                Icon(
                  Icons.share,
                  color: primarycolor,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
