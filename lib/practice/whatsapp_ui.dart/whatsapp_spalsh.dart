import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project/practice/whatsapp_ui.dart/whatsapp_home.dart';

void main() {
  runApp(MaterialApp(
    home: WhatsApp(),
  ));
}

class WhatsApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WhatsApp();
}

class _WhatsApp extends State<WhatsApp> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (Context) => WhatsAppHome()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/icons/whatsappImage1.png"),
                height: 100,
                width: 100,
              ),
              Text("WhatsApp",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.green,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ));
  }
}
