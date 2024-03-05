import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luxus_styling_salon/1_Landing.dart';
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
  const Navbar({
    super.key,
    required this.scrollController,
  });

  final ScrollController scrollController;

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
        ? DesktopNavBar(
            scrollController: widget.scrollController,
          )
        : MobileNavBar(
            scrollController: widget.scrollController,
          );
  }
}

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({
    super.key,
    required this.scrollController,
  });

  final ScrollController scrollController;

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
    required this.scrollController,
  });

  final ScrollController scrollController;

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
              SectionButton(
                buttonText: 'Home',
                onPressed: () => scrollController.animateTo(
                  0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                ),
              ),
              main.horizontalSpacingMedium(context),
              SectionButton(
                buttonText: 'Über uns',
                onPressed: () => scrollController.animateTo(
                  main.aboutStart(context),
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                ),
              ),
              main.horizontalSpacingMedium(context),
              SectionButton(
                buttonText: 'Dientleistungen',
                onPressed: () => scrollController.animateTo(
                  main.serviceStart(context),
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                ),
              ),
              main.horizontalSpacingMedium(context),
              SectionButton(
                buttonText: 'Rezensionen',
                onPressed: () => scrollController.animateTo(
                  main.testimonialStart(context),
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                ),
              ),
              main.horizontalSpacingMedium(context),
              SectionButton(
                buttonText: 'Gallerie',
                onPressed: () => scrollController.animateTo(
                  main.galleryStart(context),
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                ),
              ),
              main.horizontalSpacingMedium(context),
              SectionButton(
                buttonText: 'Kontakt',
                onPressed: () => scrollController.animateTo(
                  main.contactStart(context),
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                ),
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
  const SectionButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  final String buttonText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
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
