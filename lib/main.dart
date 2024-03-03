import 'package:flutter/material.dart';
import 'package:luxus_styling_salon/0_NavBar.dart';
import 'package:luxus_styling_salon/1_Landing.dart';
import 'package:luxus_styling_salon/2_About.dart';
import 'package:luxus_styling_salon/4_Testimonials.dart';
import 'package:luxus_styling_salon/3_Services.dart';
import 'package:luxus_styling_salon/5_Contact.dart';
import 'package:luxus_styling_salon/6_Footer.dart';

Color primaryColor = const Color.fromARGB(255, 209, 152, 38);
Color greyZero = const Color.fromARGB(255, 25, 25, 25);
Color greyOne = const Color.fromARGB(255, 41, 41, 41);

void main() => runApp(Main());

class Main extends StatelessWidget {
  Main({super.key});

  final List<Widget> sections = [
    const Landing(),
    const About(),
    const Services(),
    const Testimoials(),
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
                itemCount: sections.length,
                itemBuilder: (context, index) {
                  return sections[index];
                },
              ),
              const Navbar()
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
