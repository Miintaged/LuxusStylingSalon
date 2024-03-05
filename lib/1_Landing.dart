import 'package:flutter/material.dart';
import 'package:luxus_styling_salon/main.dart' as main;

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (context, constraints) => SizedBox(
        height: main.landingHeight(context),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
              width: constraints.maxWidth <= 800
                  ? width
                  : MediaQuery.of(context).size.width * 0.55,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 25, 25, 25),
              ),
              child: Column(
                crossAxisAlignment: constraints.maxWidth <= 800
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                  Text(
                    'Erstklassige Frisuren\ndirekt aus dem Barbershop',
                    textAlign: constraints.maxWidth <= 800
                        ? TextAlign.center
                        : TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: constraints.maxWidth <= 800
                          ? width * .07
                          : MediaQuery.of(context).size.width * 0.035,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Text(
                    'Get the perfect cut every time of your dreams at\nthe barber shop that cares about your style',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: constraints.maxWidth <= 800
                          ? width * .045
                          : width * 0.018,
                      fontWeight:
                          constraints.maxWidth <= 800 ? null : FontWeight.w100,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  constraints.maxWidth <= 800
                      ? Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.white),
                              ),
                              child: const Center(
                                child: Text(
                                  'Buchen',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.025,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: main.primaryColor),
                              ),
                              child: Center(
                                child: Text(
                                  '+43 681 10595141',
                                  style: TextStyle(color: main.primaryColor),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.18,
                              height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.white),
                              ),
                              child: const Center(
                                child: Text(
                                  'Buchen',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.025,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.18,
                              height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: main.primaryColor),
                              ),
                              child: Center(
                                child: Text(
                                  '+43 681 10595141',
                                  style: TextStyle(color: main.primaryColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ),
            constraints.maxWidth <= 800
                ? const SizedBox()
                : Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .09,
                    ),
                    child: Image.asset(
                      'assets/img/landingpage.jpeg',
                      width: MediaQuery.of(context).size.width * .4,
                      height: MediaQuery.of(context).size.height * .7,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
