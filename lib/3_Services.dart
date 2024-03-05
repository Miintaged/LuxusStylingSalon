import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luxus_styling_salon/main.dart' as main;

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      main.verticalSpacingMedium(context),
      main.horizontalSpacingMedium(context),
      const ServiceWidget(
        icon: CupertinoIcons.scissors_alt,
        serviceTitle: 'Haarschnitt',
        serviceBody:
            'Haarschnitte angepasst an deine Kopfform und preferenzen, für einen optimalen Stil und wohlbefinden. Unsere Barber beraten dich und suchen mit dir gemeinsam die beste Option',
      ),
      main.verticalSpacingMedium(context),
      main.horizontalSpacingMedium(context),
      const ServiceWidget(
          icon: CupertinoIcons.paintbrush,
          serviceTitle: 'Styling',
          serviceBody:
              'Haarfärbung, -tönung oder Styling für ein abgestimmtes Aussehen. Wir verwenden nur hochwertige Farbprodukte, die Ihr Haar schonend pflegen und ihm ein strahlendes, gesundes Aussehen verleihen.'),
      main.verticalSpacingMedium(context),
      main.horizontalSpacingMedium(context),
      Container(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.02,
            right: MediaQuery.of(context).size.width * 0.02),
        width: MediaQuery.of(context).size.width *
            (MediaQuery.of(context).size.width <= 800 ? .9 : 0.27),
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: BoxDecoration(
          color: main.greyOne,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            main.verticalSpacingLarge(context),
            SvgPicture.asset('icons/beard.svg', width: MediaQuery.of(context).size.width * 0.05, height: MediaQuery.of(context).size.width * 0.05, color: main.primaryColor,),
            Text(
              'Rasur',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.04,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            main.verticalSpacingMedium(context),
            Container(
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width *
                  (MediaQuery.of(context).size.width <= 800 ? .8 : 0.17),
              child: Text(
                'In unserem Salon genießen Sie nicht nur eine professionelle Rasur, sondern auch eine entspannende und angenehme Atmosphäre. Lehnen Sie sich zurück, lassen Sie sich verwöhnen und genießen Sie eine Auszeit vom Alltag, während wir uns um Ihr Aussehen kümmern.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: main.isMobile(context) ? MediaQuery.of(context).size.height * 0.02 : MediaQuery.of(context).size.height * 0.011,
                  color: const Color.fromARGB(255, 172, 172, 172),
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            main.verticalSpacingMedium(context),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .05,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: main.primaryColor)),
                child: Text(
                  'Buchen',
                  style: TextStyle(color: main.primaryColor),
                ),
              ),
            )
          ],
        ),
      ),
      main.verticalSpacingMedium(context),
      main.horizontalSpacingMedium(context),
    ];

    return SizedBox(
      height: MediaQuery.of(context).size.width <= 800
          ? null
          : MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            'DIENSTLEISTUNGEN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width <= 800
                  ? MediaQuery.of(context).size.width * .06
                  : MediaQuery.of(context).size.width * .04,
              color: Colors.white,
            ),
          ),
          main.verticalSpacingLarge(context),
          MediaQuery.of(context).size.width <= 800
              ? Column(
                  children: widgets,
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: widgets,
                ),
        ],
      ),
    );
  }
}

class IconRow extends StatelessWidget {
  final IconData icon;

  const IconRow({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
      decoration: BoxDecoration(
          color: main.greyOne,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: main.primaryColor)),
      child: Icon(
        icon,
        color: main.primaryColor,
      ),
    );
  }
}

class ServiceWidget extends StatelessWidget {
  final IconData icon;
  final String serviceTitle;
  final String serviceBody;

  const ServiceWidget({
    super.key,
    required this.icon,
    required this.serviceTitle,
    required this.serviceBody,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.02,
          right: MediaQuery.of(context).size.width * 0.02),
      width: MediaQuery.of(context).size.width *
          (MediaQuery.of(context).size.width <= 800 ? .9 : 0.27),
      height: main.serviceHeight(context),
      decoration: BoxDecoration(
        color: main.greyOne,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          main.verticalSpacingLarge(context),
          Icon(
            icon,
            color: main.primaryColor,
            size: MediaQuery.of(context).size.width * 0.05,
          ),
          Text(
            serviceTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.04,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          main.verticalSpacingMedium(context),
          Container(
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width *
                (MediaQuery.of(context).size.width <= 800 ? .8 : 0.17),
            child: Text(
              serviceBody,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: main.isMobile(context) ? MediaQuery.of(context).size.height * 0.0225 : MediaQuery.of(context).size.height * 0.0125,
                color: const Color.fromARGB(255, 172, 172, 172),
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          main.verticalSpacingMedium(context),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .05,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: main.primaryColor)),
              child: Text(
                'Buchen',
                style: TextStyle(color: main.primaryColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
