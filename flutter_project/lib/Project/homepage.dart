import 'package:flutter/material.dart';
import 'package:flutter_project/Project/dummydata.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Home",
          style: TextStyle(fontSize: 40, color: Colors.black),
        ),
        bottom: PreferredSize(
          preferredSize: Size.zero,
          child: Container(
            child: const Divider(
              color: Colors.green,
              height: 4.0,
              thickness: 5,
              endIndent: 400,
            ),
          ),
        ),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2.5 / 4,
        ),
        children: products
            .map((e) => Container(
                  height: 300,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.pushNamed(context, "Details1",arguments: e["id"]),
                              child: Container(
                                height: 300,
                                width: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(e["Image"]),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Positioned(
                                left: 180,
                                bottom: 260,
                                child: InkWell(
                                  onTap: () {
                                    print("Item Added to Favorite");
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        Text(
                          e["Name"],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${e["Price"]}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
