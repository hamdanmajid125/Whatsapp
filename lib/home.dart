import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WhatsAppHome extends StatelessWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(Icons.search),
            SizedBox(width: 30),
            Icon(Icons.menu),
            SizedBox(width: 20),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt_outlined)),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
          automaticallyImplyLeading: false,
          backgroundColor: HexColor("#085f56"),
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
