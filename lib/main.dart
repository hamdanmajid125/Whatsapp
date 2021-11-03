import 'package:flutter/material.dart';
import 'package:myfirst/home.dart';
import 'package:myfirst/splash.dart';
import 'package:myfirst/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Startup Name Generator',
        home: const Splash(),
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.splash,
        routes: {
          MyRoutes.splash: (context) => const Splash(),
          MyRoutes.whatsAppHome: (context) =>  WhatsAppHome()
        });
  }
}
