// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.80,
              width: MediaQuery.of(context).size.width,
              child: Image.asset("images/whatsapp.png"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.20,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "from",
                      style: TextStyle(
                        fontSize: 15,
                        color: HexColor("#a8a8aa"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "F A C E B O O K",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Organetto',
                        color: HexColor("#23bf52"),
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
