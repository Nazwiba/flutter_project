import 'package:flutter/material.dart';
import 'package:flutter_project/Project/dummydata.dart';

class Details1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tappedId = ModalRoute.of(context)?.settings.arguments;
    final product = products.firstWhere((e) => e["id"] == tappedId);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(product["Image"]),
            Text(product["Name"]),
            Text("${product["Price"]}"),
            Text(product["Description"]),
          ],
        ),
      ),
    );
  }
}
