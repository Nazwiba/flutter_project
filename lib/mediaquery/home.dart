import 'package:flutter/material.dart';
import 'package:flutter_project/mediaquery/Bigscreen.dart';
import 'package:flutter_project/mediaquery/mobilescreen.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var devicewidth = MediaQuery.of(context).size.width;
    if (devicewidth < 600) {
      return MobileScreen();
    } else {
      return BigScreen();
    }
  }
}
