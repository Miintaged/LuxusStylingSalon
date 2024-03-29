import 'package:flutter/material.dart';
import 'package:luxus_styling_salon/main.dart' as main;
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  List<String> adresse = ["Bürgerstraße 9", "6020 Innsbruck"];

  final Uri url = Uri.parse(
      'https://www.google.com/maps/place/Luxus+Styling+Salon/@47.2643608,11.387711,16.28z/data=!4m6!3m5!1s0x479d6b544f7a061d:0xb0e7e9fc86aa0ca6!8m2!3d47.2648897!4d11.3904457!16s%2Fg%2F11scfq45cq?entry=ttu');

  List<List<dynamic>> weekdays = [
    ["Montag", "9am - 7pm"],
    ["Dienstag", "9am - 7pm"],
    ["Mittwoch", "9am - 7pm"],
    ["Donnerstag", "9am - 7pm"],
    ["Freitag", "9am - 7pm"],
    ["Samstag", "9am - 6pm"],
    ["Sonntag", "Geschlossen"],
  ];

  Future<void> _launchUrl() async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      GestureDetector(
        onTap: () {
          _launchUrl();
        },
        child: Container(
          width: MediaQuery.of(context).size.width <= 800
              ? MediaQuery.of(context).size.width * .9
              : MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.4,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: main.primaryColor, width: 1)),
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(),
            child: Transform.scale(
              scale: 2,
              child: (MediaQuery.of(context).size.width > 800 && MediaQuery.of(context).size.width <= 1200) || (MediaQuery.of(context).size.width < 600)
                  ? Image.asset('assets/map_mobile.jpg')
                  : Image.asset('assets/map_desktop.jpg'),
            ),
          ),
        ),
      ),
      main.horizontalSpacingLarge(context),
      main.verticalSpacingMedium(context),
      Container(
        height: MediaQuery.of(context).size.width <= 800
            ? null
            : MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width <= 800
            ? MediaQuery.of(context).size.width * .9
            : MediaQuery.of(context).size.width * 0.4,
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.025),
        decoration: BoxDecoration(
          border: Border.all(color: main.primaryColor),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Ort',
              style: TextStyle(
                  fontSize: 30, color: Colors.white, letterSpacing: 2),
            ),
            main.verticalSpacingSmall(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_pin,
                  color: Color.fromARGB(255, 176, 176, 176),
                ),
                main.horizontalSpacingSmall(context),
                Text(
                  adresse[0],
                  style: const TextStyle(
                      fontWeight: FontWeight.w100,
                      color: Color.fromARGB(255, 176, 176, 176)),
                ),
                main.horizontalSpacingSmall(context),
                Text(
                  adresse[1],
                  style: const TextStyle(
                      fontWeight: FontWeight.w100,
                      color: Color.fromARGB(255, 176, 176, 176)),
                ),
              ],
            ),
            main.verticalSpacingMedium(context),
            const Text(
              'Öffnungszeiten',
              style: TextStyle(
                  fontSize: 30, color: Colors.white, letterSpacing: 2),
            ),
            main.verticalSpacingSmall(context),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: weekdays
                  .map((e) => Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    e[0],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w200,
                                        color: Color.fromARGB(255, 176, 176, 176)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          main.horizontalSpacingLarge(context),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 1,
                              width: 10,
                              color: main.primaryColor,
                            ),
                          ),
                          main.horizontalSpacingLarge(context),
                          Expanded(
                            flex: 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  e[1],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w200,
                                      color: Color.fromARGB(255, 176, 176, 176)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ))
                  .toList(),
            ),
          ],
        ),
      )
    ];

    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09),
      child: Center(
        child: LayoutBuilder(
          builder: (context, constraints) => Container(
            height: main.aboutHeight(context),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.05),
            child: Column(
              children: [
                main.verticalSpacingLarge(context),
                main.verticalSpacingLarge(context),
                Text(
                  'ÜBER UNS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: constraints.maxWidth <= 800
                        ? MediaQuery.of(context).size.width * .1
                        : MediaQuery.of(context).size.width * .04,
                    color: Colors.white,
                  ),
                ),
                main.verticalSpacingLarge(context),
                main.verticalSpacingLarge(context),
                constraints.maxWidth <= 800
                    ? Column(
                        children: widgets,
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: widgets,
                      ),
              ],
            ),
          ),
        ),
      ),
    );
    
  }
}
