import 'dart:ui';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  Gallery({super.key});

  final List<List<List<dynamic>>> images = [
    [
      [0, ''],
      [1, ''],
      [2, ''],
    ],
    [
      [
        0,
        'https://www.positive.news/wp-content/uploads/2023/01/iStock-1441549388-min-1800x0-c-center.jpg'
      ],
      [
        1,
        'https://www.professionalbarber.shop/wp-content/uploads/2023/08/shutterstock_608094002-1.png'
      ],
      [
        2,
        'https://images.pexels.com/photos/2076930/pexels-photo-2076930.jpeg?cs=srgb&dl=pexels-thgusstavo-santana-2076930.jpg&fm=jpg'
      ],
    ],
  ];
  Widget image(String url, String title, BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(2.5),
          child: Stack(
            children: [
              Center(
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 10,
                    sigmaY: 10,
                  ),
                  child: Transform.scale(
                    scale: 3,
                    child: Image.network(url),
                  ),
                ),
              ),
              Center(child: Image.network(url)),
              Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width * .02,
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 800) {
          return Text('mobile');
        }
        return SizedBox(
          height: width * .7,
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
                    fontSize: width * .06,
                    color: Colors.white,
                  ),
                ),
                StaggeredGrid.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 4,
                  children: [
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: image(
                        'https://www.positive.news/wp-content/uploads/2023/01/iStock-1441549388-min-1800x0-c-center.jpg',
                        'taper fade',
                        context,
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 1,
                      child: image(
                        'https://modernbarber.co.uk/wp-content/uploads/2020/02/braid-american-crew-shave-launch-copy-4-scaled-e1582112562687.jpg.webp',
                        'taper fade',
                        context,
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: image(
                        'https://images.pexels.com/photos/2076930/pexels-photo-2076930.jpeg?cs=srgb&dl=pexels-thgusstavo-santana-2076930.jpg&fm=jpg',
                        'taper fade',
                        context,
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: image(
                        'https://www.professionalbarber.shop/wp-content/uploads/2023/08/shutterstock_608094002-1.png',
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

/* ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                ...images.map(
                  (r) => Row(
                    children: r
                        .map(
                          (e) => Expanded(
                            flex: Random().nextInt(3) * (e[0] as int),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: 
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ), */