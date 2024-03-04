import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const IconRow(
              icon: CupertinoIcons.scissors_alt,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const ServiceRow(
              service: 'Kinderhaarschitt',
              price: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const ServiceRow(
              service: 'Herrenschnitt',
              price: 10,
            ),
          ],
        ),
      ),
      main.verticalSpacingMedium(context),
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const IconRow(
              icon: CupertinoIcons.paintbrush,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const ServiceRow(
              service: 'Haartönung',
              price: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const ServiceRow(
              service: 'Haarfärbung',
              price: 10,
            ),
          ],
        ),
      ),
      main.verticalSpacingMedium(context),
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const IconRow(
              icon: CupertinoIcons.alt,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const ServiceRow(
              service: 'Haartönung',
              price: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const ServiceRow(
              service: 'Haarfärbung',
              price: 10,
            ),
          ],
        ),
      ),
    ];

    return SizedBox(
        height: MediaQuery.of(context).size.width <= 800
            ? null
            : MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Text(
              'Services',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width <= 800
                    ? MediaQuery.of(context).size.width * .06
                    : MediaQuery.of(context).size.width * .04,
                color: Colors.white,
              ),
            ),
            main.verticalSpacingMedium(context),
            MediaQuery.of(context).size.width <= 800
                ? Column(
                    children: widgets,
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: widgets,
                  ),
          ],
        ));
  }
}

class IconRow extends StatelessWidget {
  final IconData icon;

  const IconRow({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
          decoration: BoxDecoration(
              color: main.greyOne,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 1, color: main.primaryColor)),
          child: Icon(
            icon,
            color: main.primaryColor,
          ),
        ),
      ],
    );
  }
}

class ServiceRow extends StatelessWidget {
  final String service;
  final int price;

  const ServiceRow({
    super.key,
    required this.service,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          service,
          style: const TextStyle(color: Colors.white),
        ),
        const Spacer(),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * 0.05,
          color: main.primaryColor,
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.02),
        Text(
          '$price€',
          style: TextStyle(color: main.primaryColor),
        )
      ],
    );
  }
}
