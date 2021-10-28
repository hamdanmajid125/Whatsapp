// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:myfirst/utils/routes.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetoHome();
  }

  void _navigatetoHome() async {
    await Future.delayed(Duration(milliseconds: 3000));
    Navigator.pushNamed(context, MyRoutes.whatsAppHome);
  }

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
