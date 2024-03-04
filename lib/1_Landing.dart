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
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 41, 41, 41)),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
            width: MediaQuery.of(context).size.width * 0.55,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 25, 25, 25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
                Text(
                  'Erstklassige Frisuren',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'direkt aus dem Barbershop',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  'Get the perfect cut every time of your dreams at',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.02,
                      fontWeight: FontWeight.w100),
                ),
                Text(
                  'the barber shop that cares about your style',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.02,
                      fontWeight: FontWeight.w100),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.175,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                      ),
                      child: Center(
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
                      width: MediaQuery.of(context).size.width * 0.175,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: main.primaryColor),
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
        ],
      ),
    );
  }
}
