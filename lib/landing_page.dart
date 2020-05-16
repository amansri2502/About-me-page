import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage("lib/image/avatar.png"),
            backgroundColor: Colors.white,
            radius: 35,
          ),
          Text(
            "Aman Kumar",
            style: TextStyle(
                color: Colors.white, fontSize: 42, fontFamily: "pacifico"),
          ),
          Text(
            "FLUTTER DEVELOPER",
            style: TextStyle(
                color: Colors.teal[50],
                fontSize: 20,
                fontFamily: "SansPro",
                letterSpacing: 1),
          ),
          Divider(
            thickness: 1,
            color: Colors.teal[50],
            indent: 70,
            endIndent: 70,
            height: 40,
          )
        ],
      ),
    );
  }
}
