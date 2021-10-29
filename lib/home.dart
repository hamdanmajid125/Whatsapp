// ignore_for_file: prefer_const_constructors

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
          actions: [
            Icon(Icons.search),
            SizedBox(width: 30),
            PopupMenuButton(
                icon: Icon(Icons.more_vert),
                itemBuilder: (context) => [
                      PopupMenuItem(child: Text("New group"), value: 1),
                      PopupMenuItem(child: Text("New broadcast"), value: 2),
                      PopupMenuItem(child: Text("Linked devices"), value: 3),
                      PopupMenuItem(child: Text("Starred Message"), value: 4),
                      PopupMenuItem(child: Text("Settings"), value: 5),
                    ]),
            SizedBox(width: 20),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
            indicatorColor: Colors.white,
          ),
          automaticallyImplyLeading: false,
          backgroundColor: HexColor("#075E54"),
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
