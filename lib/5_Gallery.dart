import 'dart:ui';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:luxus_styling_salon/main.dart' as main;

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  Widget image(String src, String title, BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(2.5),
          child: Stack(
            children: [
              Center(
                child: Transform.scale(
                  scale: 1.3,
                  child: Image.asset(src),
                ),
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            height: main.galleryHeight(context),
            width: width,
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: width * .05,
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'GALLERIE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: main.isMobile(context) ? width * .1 : width * .04,
                      color: Colors.white,
                    ),
                  ),
                  Transform.scale(
                    scale: 0.9,
                    child: StaggeredGrid.count(
                      crossAxisCount: 4,
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 4,
                      children: [
                        StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount: 2,
                          child: image(
                            'assets/img/gallery_1.jpg',
                            'taper fade',
                            context,
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount: 1,
                          child: image(
                            'assets/img/gallery_3.jpg',
                            'taper fade',
                            context,
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: image(
                            'assets/img/gallery_4.jpg',
                            'taper fade',
                            context,
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: image(
                            'assets/img/gallery_2.jpg',
                            'taper fade',
                            context,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
