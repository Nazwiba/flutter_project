import 'package:flutter/material.dart';
import 'package:flutter_project/Project/cart.dart';
import 'package:flutter_project/Project/details.dart';
import 'package:flutter_project/Project/favorite.dart';
import 'package:flutter_project/Project/homepage.dart';
import 'package:flutter_project/Project/notification.dart';
import 'package:flutter_project/Project/settings.dart';

class Bottom2 extends StatefulWidget {
  const Bottom2({super.key});

  @override
  State<Bottom2> createState() => _Bottom2State();
}

class _Bottom2State extends State<Bottom2> {
  int index = 0;
  var screens = [
    HomePage(),
    FavoritePage(),
    Cart(),
    NotificationPage(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          selectedIconTheme: const IconThemeData(size: 35),
          unselectedItemColor:const  Color.fromARGB(255, 155, 152, 152),
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          currentIndex: index,
          items:const  [
            BottomNavigationBarItem(icon: Icon(Icons.home),
                label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),
                label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
                label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.notifications),
                label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings),
                label: ""),
          ]),
          body: screens[index],
    );
  }
}
