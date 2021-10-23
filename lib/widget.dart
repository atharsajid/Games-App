import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'configration.dart';

Widget game(
  String img,
  String nam,
  String cat,
) {
  return Column(
    children: [
      Container(
        height: 220,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: primarycolor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.only(top: 50),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(img),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: primarycolor),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                margin: const EdgeInsets.only(top: 65, bottom: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      nam,
                      style: namtext,
                    ),
                    Text(
                      cat,
                      style: cattext,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    OnelevateBtn(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 30,
      ),
    ],
  );
}

final namtext = TextStyle(
  color: primarycolor,
  fontSize: 24,
  fontWeight: FontWeight.bold,
);

final cattext = TextStyle(
  color: primarycolor,
  fontSize: 16,
  fontWeight: FontWeight.normal,
);

Widget playbtn() {
  return OutlinedButton(
      style: OutlinedButton.styleFrom(
          minimumSize: const Size(150, 40),
          backgroundColor: btncolor,
          side: BorderSide(color: btncolor, width: 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          )),
      onPressed: () {},
      child: Text(
        "Play",
        style: TextStyle(
          color: primarycolor,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ));
}

profile(String username, String img) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage(img),
    ),
    title: Text(
      username,
      style: profiletxt,
    ),
    subtitle: Text(
      "Online",
      style: online,
    ),
  );
}

final profiletxt = GoogleFonts.roboto(
  fontSize: 32,
  color: primarycolor,
  fontWeight: FontWeight.bold,
);
final online = GoogleFonts.ubuntu(
    fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold);

final menutext = GoogleFonts.quicksand(
  color: primarycolor,
  fontSize: 24,
  fontWeight: FontWeight.bold,
);

Widget profilebtn() {
  return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        Icons.person,
        color: menubtn,
      ),
      label: Text(
        "Profile",
        style: menutext,
      ));
}

Widget browse() {
  return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        Icons.apps_rounded,
        color: menubtn,
      ),
      label: Text(
        "Browse",
        style: menutext,
      ));
}

Widget newrealise() {
  return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        Icons.air_rounded,
        color: menubtn,
      ),
      label: Text(
        "New Releases",
        style: menutext,
      ));
}

Widget coming() {
  return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        Icons.upcoming,
        color: menubtn,
      ),
      label: Text(
        "Comming Soon",
        style: menutext,
      ));
}

Widget fav() {
  return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        Icons.favorite,
        color: menubtn,
      ),
      label: Text(
        "Favorite",
        style: menutext,
      ));
}

Widget setting() {
  return IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.settings,
      color: menubtn,
      size: 50,
    ),
  );
}

Widget logout() {
  return IconButton(
    onPressed: () {
      Colors.amber;
    },
    icon: Icon(
      Icons.logout,
      color: menubtn,
      size: 50,
    ),
  );
}

class OnelevateBtn extends StatefulWidget {
  const OnelevateBtn({Key? key}) : super(key: key);

  @override
  _OnelevateBtnState createState() => _OnelevateBtnState();
}

class _OnelevateBtnState extends State<OnelevateBtn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton.icon(
          style: ButtonStyle(
            backgroundColor: getcolor(Colors.transparent, btncolor),
            foregroundColor: getcolor(btncolor, primarycolor),
          ),
          onPressed: () {},
          label: const Text(
            "Play",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          icon: const Icon(Icons.gamepad),
        ),
      ],
    );
  }

  MaterialStateProperty<Color> getcolor(Color color, Color color2) {
    final getcolor = (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return color2;
      } else {
        return color;
      }
    };
    return MaterialStateProperty.resolveWith(getcolor);
  }
}
