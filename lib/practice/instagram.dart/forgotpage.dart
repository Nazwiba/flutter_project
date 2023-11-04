import 'package:flutter/material.dart';

class InstaforgotPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.purple,
              Colors.pink,
              Colors.orange,
              Colors.pink,
              Colors.purple,
            ]
          )
        ),
      ),
      appBar: AppBar(
        backgroundColor:Colors.purple,
        leading: IconButton(
          onPressed: () {},
           icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
           )),
      ),
    );
  }
}
