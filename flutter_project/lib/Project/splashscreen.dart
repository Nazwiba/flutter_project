import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project/Project/homepage.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: ShoppingApp(),
  ));
}

class ShoppingApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ShoppingApp();
}

class _ShoppingApp extends State<ShoppingApp> {
  @override
  void iniState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.shopping_cart,color: Colors.green,size:100,),
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: "Online",
                    style: TextStyle(fontSize: 20, color: Colors.green)),
                  
                TextSpan(
                    text: " Shopping",
                    style: TextStyle(fontSize: 20, color: Colors.black))
              ])),
            
          ],
        ),
      ),
    );
  }
}