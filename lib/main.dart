import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luxus_styling_salon/0_NavBar.dart';
import 'package:luxus_styling_salon/1_Landing.dart';
import 'package:luxus_styling_salon/2_About.dart';
import 'package:luxus_styling_salon/4_Testimonials.dart';
import 'package:luxus_styling_salon/3_Services.dart';
import 'package:luxus_styling_salon/6_Contact.dart';
import 'package:luxus_styling_salon/5_Gallery.dart';
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

double landingHeight(context) => isMobile(context)
    ? MediaQuery.of(context).size.height * .8
    : MediaQuery.of(context).size.height;
bool inLandingRange(context, position) =>
    position > 0 && position < landingHeight(context);

double aboutHeight(context) => MediaQuery.of(context).size.height;
double aboutStart(context) =>
    landingHeight(context) + MediaQuery.of(context).size.height * .1;
bool inAboutRange(context, position) =>
    position > aboutStart(context) &&
    position < aboutStart(context) + aboutHeight(context);

double serviceHeight(context) => MediaQuery.of(context).size.height * 0.8;
double serviceStart(context) =>
    aboutStart(context) +
    aboutHeight(context) +
    MediaQuery.of(context).size.height * .1;
bool inServiceRange(context, position) =>
    position > serviceStart(context) &&
    position < serviceStart(context) + serviceHeight(context);

double testimonialHeight(context) =>
    isMobile(context) ? 0 : MediaQuery.of(context).size.height;
double testimonialStart(context) =>
    serviceStart(context) +
    serviceHeight(context) +
    MediaQuery.of(context).size.height * .1;
bool inTestimonialRange(context, position) =>
    position > testimonialStart(context) &&
    position < testimonialStart(context) + testimonialHeight(context);

double galleryHeight(context) => isMobile(context)
    ? MediaQuery.of(context).size.height * .0525
    : MediaQuery.of(context).size.height;
double galleryStart(context) =>
    testimonialStart(context) +
    testimonialHeight(context);
bool inGalleryRange(context, position) =>
    position > galleryStart(context) &&
    position < galleryStart(context) + galleryHeight(context);

double contactHeight(context) => MediaQuery.of(context).size.height;
double contactStart(context) =>
    galleryStart(context) +
    galleryHeight(context) +
    MediaQuery.of(context).size.height * .1;
bool inContactRange(context, position) =>
    position > contactStart(context) &&
    position < contactStart(context) + contactHeight(context);

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<dynamic>> sectionNames = [
      [
        0,
        'Home',
      ],
      [
        aboutHeight(context),
        'Über uns',
      ],
      [
        serviceHeight(context),
        'Dienstleistungen',
      ],
      [
        testimonialHeight(context),
        'Rezension',
      ],
      [
        contactHeight(context),
        'Kontakt',
      ],
    ];

    final List<Widget> sections = [
      const Landing(),
      verticalSpacingLarge(context),
      verticalSpacingLarge(context),
      const About(),
      verticalSpacingLarge(context),
      verticalSpacingLarge(context),
      const Services(),
      verticalSpacingLarge(context),
      verticalSpacingLarge(context),
      isMobile(context) ? const SizedBox() : const Testimoials(),
      const Gallery(),
      verticalSpacingLarge(context),
      verticalSpacingLarge(context),
      const Contact(),
      const Footer()
    ];

    ScrollController scrollController = ScrollController();

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
                controller: scrollController,
                physics: const BouncingScrollPhysics(),
                itemCount: sections.length,
                itemBuilder: (context, index) {
                  return sections[index];
                },
              ),
              Navbar(
                scrollController: scrollController,
              )
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
                    verticalSpacingMedium(context),
                    ...sectionNames.map(
                      (e) => GestureDetector(
                        onTap: () => scrollController.animateTo(
                          e[0],
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeOut,
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          child: Text(
                            e[1],
                            style: TextStyle(fontSize: 20, color: primaryColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : null,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
