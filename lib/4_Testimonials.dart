import 'package:flutter/material.dart';
import 'package:luxus_styling_salon/main.dart' as main;

class Testimoials extends StatefulWidget {
  const Testimoials({super.key});

  @override
  State<Testimoials> createState() => _TestimoialsState();
}

class _TestimoialsState extends State<Testimoials> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: main.greyOne,
      ),
      child: const Center(
        child: Text('Testimonials'),
      ),
    );
  }
}
