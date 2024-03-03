import 'package:flutter/material.dart';
import 'package:luxus_styling_salon/main.dart' as main;

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: main.greyOne,
      ),
      child: const Center(
        child: Text('About'),
      ),
    );
  }
}
