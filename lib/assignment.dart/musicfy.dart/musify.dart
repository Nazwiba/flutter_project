import 'package:flutter/material.dart';
import 'package:flutter_project/assignment.dart/musicfy.dart/list.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Musify(),
  ));
}

class Musify extends StatefulWidget {
  @override
  State<Musify> createState() => _MusifyState();
}

class _MusifyState extends State<Musify> {
  var index = 0;
  var image = [
    "assets/images/musicappimage.jpg",
    "assets/images/popmusic pic.png",
    "assets/images/lofi pic.png",
    "assets/images/musicimage1.jpg",
    "assets/images/musicappimage1.jpg",
    "assets/images/musicappimage2.jpg",
    "assets/images/musciappimage3.jpg",
    "assets/images/musicappimage4.jpg",
    "assets/images/image123.jpg",
    "assets/images/image345.jpg",
    "assets/images/image456.jpg",
    "assets/images/image7890.jpg",
    "assets/images/image45678.jpg",
    "assets/images/image56789.jpg"
  ];
  //var screens = [MusicList()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            "Musify",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 235, 140, 172)),
          ),
        ),
        bottom: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Suggested Playlists",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 235, 140, 172)),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: const Color.fromARGB(255, 235, 140, 172),
          unselectedItemColor: const Color.fromARGB(255, 235, 140, 172),
          selectedLabelStyle: const TextStyle(fontSize: 15),
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 235, 140, 172),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 235, 140, 172),
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 235, 140, 172),
                ),
                label: "Favourite"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_horiz,
                  color: Color.fromARGB(255, 235, 140, 172),
                ),
                label: "More Options"),
          ]),
      // body:Container(
      //   height: 150,
      //   width: double.infinity,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(30)
      //   ),
      //   child: GridView.count(
      //     scrollDirection: Axis.horizontal,
      //     crossAxisCount:1,
      //     childAspectRatio: 0.60,
      //     mainAxisSpacing: 0.2,
      //     crossAxisSpacing: 4.0,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           color: Colors.green,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           color: Colors.green,
      //         ),
      //       ),
      //     ],
      //     ),
      // ),

      body: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: GridView.count(
              //primary: false,
              //shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              crossAxisCount: 1,
              children: List.generate(
                  14,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(image[index]),
                                  fit: BoxFit.fill)),
                        ),
                      )),
            ),
          ),
          //screens[index],
         
        ],
      ),
    );
  }
}
