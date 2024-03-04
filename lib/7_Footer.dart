import 'package:flutter/material.dart';
import 'package:luxus_styling_salon/main.dart' as main;

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: main.greyOne,
      ),
      child: const Center(
        child: Text('Footer'),
      ),
    );
  }
}
