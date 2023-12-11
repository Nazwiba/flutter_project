import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MusicList(),
  ));
}

class MusicList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MusicList();
}

class _MusicList extends State<MusicList> {
  var name = [
    "Hero",
    "Unholy",
    "Lift Me Up",
    "Depression",
    "I'm Good",
    "Let Me Down Slowly",
    "Perfect",
    "Lover",
    "Arcade",
    "Heat Waves"
  ];
  var singer = [
    "Taylor Swift",
    "Sam Smith, Kim Pectras",
    "Rihanna",
    "Dax",
    "David Guetta & Bebe Rexha",
    "Alec Benjamin",
   "Ed Sheeran",
   "Taylor Swift",
    "Duncan Laurence",
    "Glass Animals"
  ];
  var image = [
    "assets/images/hero.webp",
    "assets/images/unholy.jpg",
    "assets/images/lift me up.webp",
    "assets/images/depression.jpeg",
    "assets/images/i'm good.jpg",
    "assets/images/let mw down slowly.jpg",
    "assets/images/perfect.jpg",
    "assets/images/lover.jpg",
    "assets/images/arcade.jpg",
    "assets/images/heat waves.jpg",
  ];
  var icons1 = [
    const Icon(Icons.star_border_outlined,
        color: Color.fromARGB(255, 235, 140, 172)),
    const Icon(Icons.star_border_outlined,
        color: Color.fromARGB(255, 235, 140, 172)),
    const Icon(Icons.star_border_outlined,
        color: Color.fromARGB(255, 235, 140, 172)),
    const Icon(Icons.star_border_outlined,
        color: Color.fromARGB(255, 235, 140, 172)),
    const Icon(Icons.star_border_outlined,
        color: Color.fromARGB(255, 235, 140, 172)),
   const Icon(Icons.star_border_outlined,
        color: Color.fromARGB(255, 235, 140, 172)),
   const Icon(Icons.star_border_outlined,
       color: Color.fromARGB(255, 235, 140, 172)),
    const Icon(Icons.star_border_outlined,
       color: Color.fromARGB(255, 235, 140, 172)),
   const Icon(Icons.star_border_outlined,
       color: Color.fromARGB(255, 235, 140, 172)),
    const Icon(Icons.star_border_outlined,
       color: Color.fromARGB(255, 235, 140, 172)),
  ];
  var icons2 = [
    const Icon(Icons.download_outlined,
      color: Color.fromARGB(255, 235, 140, 172)),
    const Icon(Icons.download_outlined,
      color: Color.fromARGB(255, 235, 140, 172)),
    const Icon(Icons.download_outlined,
      color: Color.fromARGB(255, 235, 140, 172)),
    const Icon(Icons.download_outlined,
      color: Color.fromARGB(255, 235, 140, 172)),
    const Icon(Icons.download_outlined,
      color: Color.fromARGB(255, 235, 140, 172)),
    const Icon(Icons.download_outlined,
     color: Color.fromARGB(255, 235, 140, 172)),
    const Icon(Icons.download_outlined,
     color: Color.fromARGB(255, 235, 140, 172)),
   const Icon(Icons.download_outlined,
     color: Color.fromARGB(255, 235, 140, 172)),
    const Icon(Icons.download_outlined,
     color: Color.fromARGB(255, 235, 140, 172)),
    const Icon(Icons.download_outlined,
     color: Color.fromARGB(255, 235, 140, 172)),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
              "Recommended For You",
              style: TextStyle(
                  color: Color.fromARGB(255, 235, 140, 172),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            //title: Text("Recommended For You",style: TextStyle(color:  Color.fromARGB(255, 235, 140, 172),fontSize: 20,fontWeight: FontWeight.bold),),
            // bottom: const TabBar(
            //   //dividerColor: Colors.black,
            //   indicatorColor: Colors.white,
            //   //overlayColor: MaterialStatePropertyAll(Colors.black),
            //   tabs: [
            //   Text(
            //     "Recommended For You",
            //     style: TextStyle(
            //         color: Color.fromARGB(255, 235, 140, 172),
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold),
            //   )
            // ]),
          ),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(
                5,
                (index) => ListTile(
                    tileColor: Colors.black,
                    leading: Container(
                      height: 50,
                      width: 50,
                      child: Image.asset(image[index],fit: BoxFit.fill,)),
                    title: Text(
                      name[index],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 235, 140, 172)),
                    ),
                    subtitle: Text(
                      singer[index],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    trailing: Column(
                      children: [icons1[index], icons2[index]],
                    ))),
          ),
          ),
    );
  }
}
