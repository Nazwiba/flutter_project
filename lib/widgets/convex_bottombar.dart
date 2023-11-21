import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/grid%20view/grid_view1.dart';
import 'package:flutter_project/grid%20view/grid_view2.dart';
import 'package:flutter_project/stateless_listview.dart';

void main() {
  runApp(MaterialApp(home: ConvexBottombar()));
}

class ConvexBottombar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ConvexBottombar();
}

class _ConvexBottombar extends State<ConvexBottombar> {
  int index = 0;
  var screens = [
    GridView1(),
    GridView2(),
    ListView2(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Convex Bottom Bar"),
      ),
      bottomNavigationBar: ConvexAppBar(style: TabStyle.react,items: const [
        TabItem(icon: Icon(Icons.home,color: Colors.white,)),
        TabItem(icon: Icon(Icons.search,color: Colors.white,)),
        TabItem(icon: Icon(Icons.person,color: Colors.white,)),
      ]),
      body: screens[index],
    );
  }
}
