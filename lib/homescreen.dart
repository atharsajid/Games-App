import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hidden_drawer/configration.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  double yoffset = 0;
  double scalefactor = 1;
  bool isdraweropen = false;

  Color boxco = Colors.white;
  Color focusco = Colors.black87;
  bool isfocuson = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(scalefactor),
      duration: const Duration(milliseconds: 250),
      color: Colors.black87,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isdraweropen
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            xoffset = 0;
                            yoffset = 0;
                            scalefactor = 1;
                            isdraweropen = false;
                          });
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: primarycolor,
                        ))
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            xoffset = 230;
                            yoffset = 150;
                            scalefactor = 0.6;
                            isdraweropen = true;
                          });
                        },
                        icon: Icon(
                          Icons.menu,
                          color: primarycolor,
                        ),
                      ),
                Column(
                  children: [
                    SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset("images/logo.png")),
                    Text(
                      "Games",
                      style: heading,
                    ),
                  ],
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage("images/dp.jpg"),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 250,
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        label: const Text(
                          "Search",
                          style: labeltext,
                        ),
                        hintText: "Search Game To Play",
                        hintStyle: labeltext,
                        enabledBorder: input,
                        focusedBorder: input,
                      ),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings,
                      color: primarycolor,
                    ))
              ],
            ),
          ),
          Container(
            height: 120,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: boxco,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          categories[index]['iconPath'],
                          width: 50,
                          height: 50,
                          color: focusco,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 20, top: 5),
                          alignment: Alignment.center,
                          // width:50,
                          child:
                              Text(categories[index]['name'], style: cattext)),
                    ],
                  );
                }),
          ),
          Container(
            height: 240,
            margin: EdgeInsets.only(top: 50),
            child: Row(
              children: [
                Expanded(
                    child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: primarycolor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.only(left: 20),
                    ),
                  ],
                ),),
                Expanded(child: Container())
              ],
            ),
          )
        ],
      ),
    );
  }
}
