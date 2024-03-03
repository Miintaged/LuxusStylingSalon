import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  ButtonStyle removeAnimation = ButtonStyle(
    overlayColor: MaterialStateColor.resolveWith(
      (states) => Colors.transparent,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      width: MediaQuery.of(context).size.width,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SectionButton(
            buttonText: 'Home',
          ),
          SectionButton(
            buttonText: 'Über uns',
          ),
          SectionButton(
            buttonText: 'Portfolio',
          ),
          SectionButton(
            buttonText: 'Dienstleistungen',
          ),
          SectionButton(
            buttonText: 'Produkte',
          ),
        ],
      ),
    );
  }
}

class SectionButton extends StatelessWidget {
  final String buttonText;

  const SectionButton({
    super.key,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        overlayColor: MaterialStateColor.resolveWith(
          (states) => Colors.transparent,
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.015,
          color: Colors.white,
        ),
      ),
    );
  }
}
