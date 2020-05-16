import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(onTap: () async{
              const url = 'tel:+91 9999999999';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }

            },
                          child: Card(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "+91-9999999999",
                    style: TextStyle(
                        color: Colors.teal, fontFamily: "SansPro", fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.teal,
                ),
                title: GestureDetector(
                  onTap: () async {
                    const url = 'mailto:aman.sri25@gmail.com';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Text(
                    "aman.sri25@gmail.com",
                    style: TextStyle(
                        color: Colors.teal,
                        fontFamily: "SansPro",
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
