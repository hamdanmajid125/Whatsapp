// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:badges/badges.dart';
import 'dart:convert';

// ignore: use_key_in_widget_constructors
class WhatsAppHome extends StatefulWidget {
  @override
  State<WhatsAppHome> createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> {
  List messages = [];
  @override
  void initState() {
    super.initState();
    loadata();
  }

  Future<void> loadata() async {
    final String response = await rootBundle.loadString('whatsapp.json');
    final data = await json.decode(response);
    setState(() {
      messages = data["messages"];
    });
  }

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
                          PopupMenuItem(
                              child: Text("Linked devices"), value: 3),
                          PopupMenuItem(
                              child: Text("Starred Message"), value: 4),
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
            body: ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: messages.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ListTile(
                          leading: CircleAvatar(
                            foregroundColor: HexColor("#d8e2e3"),
                            backgroundImage: messages[index]["url"] == "null"
                                ? AssetImage("images/userprofile.png")
                                : AssetImage(messages[index]["url"]),
                            radius: 25,
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(left: 8, bottom: 5),
                            child: Text(messages[index]["name"]),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(messages[index]["message"]),
                          ),
                          trailing: Column(
                            children: [
                              Text(
                                messages[index]["time"],
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Badge(
                                badgeContent: Text(
                                  "15",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                  ),
                                ),
                                shape: BadgeShape.square,
                                borderRadius: BorderRadius.circular(50),
                                alignment: Alignment.center,
                                badgeColor: Colors.green,
                              ),
                            ],
                          )),
                    )),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.chat_sharp,
              ),
              backgroundColor: HexColor("#1ec657"),
            )));
  }
}
