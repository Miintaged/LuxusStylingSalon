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
              /* Center(
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 10,
                    sigmaY: 10,
                  ),
                  child: Transform.scale(
                    scale: 3,
                    child: Image.asset(src),
                  ),
                ),
              ), */
              Center(
                child: Transform.scale(
                  scale: 1.3,
                  child: Image.asset(src),
                ),
              ),
              /* Container(
                alignment: Alignment.bottomRight,
                child: Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.width * .03,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(color: main.primaryColor.withOpacity(.4)),
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * .02,
                        ),
                      ),
                    ],
                  ),
                ),
              ), */
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    double height = main.galleryHeight(context);
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: constraints.maxWidth <= 800 ? height * .525 : width * .75,
          width: width,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: width * .05,
              vertical: height * .1,
            ),
            child: Column(
              children: [
                Text(
                  'GALLERIE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize:
                        constraints.maxWidth <= 800 ? width * .06 : width * .04,
                    color: Colors.white,
                  ),
                ),
                main.verticalSpacingLarge(context),
                StaggeredGrid.count(
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
              ],
            ),
          ),
        );
      },
    );
  }
}
