import 'package:flutter/material.dart';

import 'package:hidden_drawer/widget.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: const AssetImage(
          "images/5.jpg",
        ),
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.darken),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 80, left: 10),
                child: profile("Muhammad Athar", "images/dp.jpg"),
              ),
              Container(
                height: 450,
                color: Colors.transparent,
                padding: const EdgeInsets.only(top: 80, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    profilebtn(),
                    browse(),
                    newrealise(),
                    coming(),
                    fav(),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 60, left: 10),
                child: Row(
                  children: [
                    setting(),
                    const SizedBox(
                      width: 20,
                    ),
                    logout(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
