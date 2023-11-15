import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Cardex(),
  ));
}

class Cardex extends StatelessWidget {
  var icons = [
    Icon(Icons.home_filled,color: Colors.grey,)
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: ((context, index) => Card(
                child: Column(
                  children: [
                    Text("Heart "),
                    (icons[index]),
                  ],
                ),
              ))),
    );
  }
}
