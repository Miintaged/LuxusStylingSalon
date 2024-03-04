import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luxus_styling_salon/main.dart' as main;

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
      color: Colors.white.withOpacity(0.1),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.scissors,
                size: 40,
                color: main.primaryColor,
              ),
              Text(
                'Luxus Styling Salon',
                style: TextStyle(color: main.primaryColor),
              )
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SectionButton(
                buttonText: 'Home',
              ),
              SectionButton(
                buttonText: 'Über uns',
              ),
              SectionButton(
                buttonText: 'Dientleistungen',
              ),
              SectionButton(
                buttonText: 'Rezensionen',
              ),
              SectionButton(
                buttonText: 'Kontakt',
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
          ),
          Row(
            children: [
              Icon(
                Icons.facebook,
                color: main.primaryColor,
              ),
            ],
          )
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
