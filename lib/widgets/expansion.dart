import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ExpansionTileEg(),
  ));
}

class ExpansionTileEg extends StatelessWidget {
  var colors1 = [Colors.red, Colors.green, Colors.yellow];
  var colors2 = [Colors.blueGrey, Colors.blue, Colors.lightBlue];
  var colors3 = [Colors.purple, Colors.purpleAccent, Colors.deepPurple];
  var texts = ["User 1", "User 2", "User 3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Tile"),
      ),
      body: ListView(
        children: [
          ExpansionTile(
             title: Text("Tile 1"),
              children: List.generate(
                  3,
                  (index) => ListTile(
                        leading: CircleAvatar(
                          backgroundColor: colors1[index],
                          child: Icon(Icons.person),
                        ),
                        subtitle: Text(texts[index]),
                      ))),
          ExpansionTile(
              title: Text("Tile 2"),
              children: List.generate(
                  3,
                  (index) => ListTile(
                        leading: CircleAvatar(
                          backgroundColor: colors2[index],
                          child: Icon(Icons.person),
                        ),
                        subtitle: Text(texts[index]),
                      ))),
          ExpansionTile(
              title: Text("Tile 2"),
              children: List.generate(
                  3,
                  (index) => ListTile(
                        leading: CircleAvatar(
                          backgroundColor: colors3[index],
                          child: Icon(Icons.person),
                        ),
                        subtitle: Text(texts[index]),
                      )))
        ],
      ),
    );
  }
}
