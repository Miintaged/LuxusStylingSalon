import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luxus_styling_salon/0_NavBar.dart';
import 'package:luxus_styling_salon/1_Landing.dart';
import 'package:luxus_styling_salon/2_About.dart';
import 'package:luxus_styling_salon/4_Testimonials.dart';
import 'package:luxus_styling_salon/3_Services.dart';
import 'package:luxus_styling_salon/5_Contact.dart';
import 'package:luxus_styling_salon/6_Gallery.dart';
import 'package:luxus_styling_salon/7_Footer.dart';

Color primaryColor = const Color.fromARGB(255, 209, 152, 38);
Color greyZero = const Color.fromARGB(255, 25, 25, 25);
Color greyOne = const Color.fromARGB(255, 41, 41, 41);
bool isMobile(context) => MediaQuery.of(context).size.width <= 800;
SizedBox horizontalSpacingSmall(context) => SizedBox(
      width: MediaQuery.of(context).size.width * 0.01,
    );
SizedBox horizontalSpacingMedium(context) => SizedBox(
      width: MediaQuery.of(context).size.width * 0.02,
    );
SizedBox horizontalSpacingLarge(context) => SizedBox(
      width: MediaQuery.of(context).size.width * 0.05,
    );
SizedBox verticalSpacingSmall(context) => SizedBox(
      height: MediaQuery.of(context).size.height * 0.01,
    );
SizedBox verticalSpacingMedium(context) => SizedBox(
      height: MediaQuery.of(context).size.height * 0.02,
    );
SizedBox verticalSpacingLarge(context) => SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
    );

void main() => runApp(Main());

class Main extends StatelessWidget {
  Main({super.key});

  List<String> sectionNames = [
    'Home',
    'Über uns',
    'Dienstleistungen',
    'Rezension',
    'Kontakt'
  ];

  final List<Widget> sections = [
    const Landing(),
    const About(),
    const Services(),
    const Testimoials(),
    const Gallery(),
    const Contact(),
    const Footer()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Luxus Styling Salon',
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Oswald',
      ),
      home: Scaffold(
          backgroundColor: greyZero,
          body: SafeArea(
            child: Stack(
              children: [
                ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: sections.length,
                  itemBuilder: (context, index) {
                    return sections[index];
                  },
                ),
                const Navbar()
              ],
            ),
          ),
          drawer: isMobile(context)
              ? Drawer(
                  shape: const Border(),
                  backgroundColor: greyZero.withOpacity(0.9),
                  surfaceTintColor: Colors.transparent,
                  child: ListView(
                    children: [
                      DrawerHeader(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.scissors,
                              size: 40,
                              color: primaryColor,
                            ),
                            Text(
                              'Luxus Styling Salon',
                              style: TextStyle(color: primaryColor),
                            ),
                          ],
                        ),
                      ),
                      ...sectionNames.map(
                        (e) => Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          // padding: EdgeInsets.only(
                          //     left: MediaQuery.of(context).size.width * 0.1),
                          // decoration: BoxDecoration(
                          //   border: Border(
                          //       bottom: BorderSide(
                          //           width: 0.2,
                          //           color: Color.fromARGB(255, 160, 160, 160))),
                          // ),
                          child: Row(
                            children: [
                              Text(
                                e,
                                style: TextStyle(fontSize: 20, color: primaryColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : null),
      debugShowCheckedModeBanner: false,
    );
  }
}
