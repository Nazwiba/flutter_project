import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Favorites",style: TextStyle(fontSize: 40,color: Colors.black),),
        bottom:
        PreferredSize(preferredSize: Size.zero, child: Container(
          child: const Divider(
            color: Colors.green,
            height: 4.0,
            thickness: 5,
            endIndent: 400,
          ),
      ),
        )
      )
    );
  }
}