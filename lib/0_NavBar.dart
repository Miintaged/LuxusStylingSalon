import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
      color: Colors.white.withOpacity(0.1),
      child: Row(
        children: [
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
          main.horizontalSpacingLarge(context),
          main.horizontalSpacingLarge(context),
          main.horizontalSpacingLarge(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SectionButton(
                buttonText: 'Home',
              ),
              main.horizontalSpacingMedium(context),
              const SectionButton(
                buttonText: 'Über uns',
              ),
              main.horizontalSpacingMedium(context),
              const SectionButton(
                buttonText: 'Dientleistungen',
              ),
              main.horizontalSpacingMedium(context),
              const SectionButton(
                buttonText: 'Rezensionen',
              ),
              main.horizontalSpacingMedium(context),
              const SectionButton(
                buttonText: 'Kontakt',
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  color: Colors.red,
                    padding: const EdgeInsets.all(20),
                    child: SvgPicture.asset(
                        'LuxusStylingSalon/icons/instagram.svg')),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  color: Colors.red,
                    padding: const EdgeInsets.all(20),
                    child:
                        SvgPicture.asset('LuxusStylingSalon/icons/tiktok.svg')),
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
