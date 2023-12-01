import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Home",
          style: TextStyle(fontSize: 40,color: Colors.black),),
        bottom:PreferredSize(preferredSize: Size.zero, child: Container(
          child: const Divider(
            color: Colors.green,
            height: 4.0,
            thickness: 5,
            endIndent: 400,
          ),),
          ),
      ),
      
    );
  }
}
