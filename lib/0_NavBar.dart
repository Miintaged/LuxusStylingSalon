import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luxus_styling_salon/main.dart' as main;
import 'package:url_launcher/url_launcher.dart';

Uri instagram_url = Uri.parse('https://www.instagram.com/luxus_styling_salon/');
Uri tiktok_url = Uri.parse('https://www.tiktok.com/@luxusstylingsalon');

Future<void> _launchInstagram() async {
    if (!await launchUrl(instagram_url)) {
      throw Exception('Could not launch $instagram_url');
    }
  }

  Future<void> _launchTiktok() async {
    if (!await launchUrl(tiktok_url)) {
      throw Exception('Could not launch $tiktok_url');
    }
  }

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
    return MediaQuery.of(context).size.width > 800
        ? const DesktopNavBar()
        : const MobileNavBar();
  }
}

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      color: Colors.white.withOpacity(0.1),
      child: Row(
        children: [
          IconButton(
            focusColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu_rounded,
              size: 35,
            ),
          ),
          const Spacer(),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  _launchInstagram();
                },
                child: Container(
                  padding: const EdgeInsets.all(25),
                  child: SvgPicture.asset('assets/icons/instagram.svg',
                      width: 30, height: 30, color: Colors.white),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _launchTiktok();
                },
                child: Container(
                  padding: const EdgeInsets.all(25),
                  child: SvgPicture.asset('assets/icons/tiktok.svg',
                      width: 30, height: 30, color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
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
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
          ),
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
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  _launchInstagram();
                },
                child: Container(
                  padding: const EdgeInsets.all(25),
                  child: SvgPicture.asset('assets/icons/instagram.svg',
                      width: 30, height: 30, color: Colors.white),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _launchTiktok();
                },
                child: Container(
                  padding: const EdgeInsets.all(25),
                  child: SvgPicture.asset('assets/icons/tiktok.svg',
                      width: 30, height: 30, color: Colors.white),
                ),
              ),
            ],
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
          fontWeight: FontWeight.w100,
          color: Colors.white,
        ),
      ),
    );
  }
}
