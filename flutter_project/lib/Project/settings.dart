import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Settings",style: TextStyle(fontSize: 40,color: Colors.black),),
        bottom:PreferredSize(preferredSize: Size.zero, child: Container(
          child: const Divider(
            color: Colors.green,
            height: 4.0,
            thickness: 5,
            endIndent: 400,
          ),),
          )
      ),
    );
  }
}