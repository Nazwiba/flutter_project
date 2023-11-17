import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Staggered_grid2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: StaggeredGrid.extent(
          maxCrossAxisExtent: 200,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3,
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/autumn.jpg"),
                          fit: BoxFit.fill)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/autumn.jpg"),
                          fit: BoxFit.fill)),
                )),
                StaggeredGridTile.count(
              crossAxisCellCount: 1, 
              mainAxisCellCount: 2, 
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/autumn.jpg"),
                    fit: BoxFit.fill)
                ),
              )),
          ],
        ),
      ),
    );
  }
}
