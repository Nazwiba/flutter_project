import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Fruits(),
  ));
}

class Fruits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Product List",
        style: TextStyle(fontSize: 25,
        fontWeight: FontWeight.bold),),
        actions: const [
          Icon(Icons.shopping_cart),
        ],
      ),
    
    );
  }
}
