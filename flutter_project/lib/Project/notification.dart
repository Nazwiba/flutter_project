import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Notification",style: TextStyle(fontSize: 40,color: Colors.black),),
        bottom:PreferredSize(preferredSize: Size.zero, child: Container(
          child: const Divider(
            color: Colors.green,
            height: 4.0,
            thickness: 5,
            endIndent: 350,
          ),),
          )
      ),
    );
  }
}