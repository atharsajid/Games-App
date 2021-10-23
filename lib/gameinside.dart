import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidden_drawer/configration.dart';
import 'package:hidden_drawer/widget.dart';

class Gameinside extends StatefulWidget {
  static const routename = "game inside";
  const Gameinside({Key? key}) : super(key: key);

  @override
  _GameinsideState createState() => _GameinsideState();
}

class _GameinsideState extends State<Gameinside> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: const AssetImage("images/2.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.6), BlendMode.darken)),
                  ),
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
          margin: const EdgeInsets.only(top: 65),
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
        ),
        Container(
          margin: const EdgeInsets.only(top: 80),
          child: Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              "images/fortnit.png",
              height: 400,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: primarycolor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        blurRadius: 15,
                        spreadRadius: 7)
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "FORTNITE",
                    style: namtxt,
                  ),
                  Text(
                    "Online BattleGround Game",
                    style: onlinetxt,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.only(top: 300),
          child: Align(
            alignment: Alignment.center,
            child: Container(
                child: Text(
              abc,
              textAlign: TextAlign.justify,
              style: textst,
            )),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(25)),
              color: Colors.grey[200],
            ),
            width: double.infinity,
            height: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.favorite),
                  backgroundColor: Colors.amber,
                  foregroundColor: primarycolor,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 80),
                    primary: btncolor,
                    onPrimary: primarycolor,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.gamepad),
                  label: Text(
                    "Play",
                    style: bttxt,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

final namtxt = GoogleFonts.ubuntu(
  fontSize: 52,
  letterSpacing: 5,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  decoration: TextDecoration.underline,
  decorationColor: Colors.black87,
  decorationStyle: TextDecorationStyle.solid,
  decorationThickness: 0.5,
);

final onlinetxt = GoogleFonts.ubuntu(
  fontSize: 18,
  letterSpacing: 2,
  fontWeight: FontWeight.bold,
  color: Colors.black54,
);
final bttxt = GoogleFonts.ubuntu(
  fontSize: 28,
  letterSpacing: 5,
  fontWeight: FontWeight.bold,
  color: primarycolor,
);

String abc =
    "  Fortnite is an online video game developed by Epic Games and released in 2017. It is available in three distinct game mode versions that otherwise share the same general gameplay and game engine: Fortnite: Save the World,";

final textst = GoogleFonts.ubuntu(fontSize: 18, color: Colors.black);
