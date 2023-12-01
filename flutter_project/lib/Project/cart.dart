import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Cart",style: TextStyle(fontSize: 40,color: Colors.black),),
        bottom:PreferredSize(preferredSize: Size.zero, child: Container(
          child:const  Divider(
            color: Colors.green,
            height: 4.0,
            thickness: 5,
            endIndent: 450,
          ),
          
        ))
      ),
    );
  }
}