import 'package:flutter/cupertino.dart';
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
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: main.greyOne,
      ),
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topLeft,
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: main.primaryColor),
                ),
                child: Container(
                  decoration: BoxDecoration(color: main.greyZero),
                ),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.1,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.17,
                  ),
                  Row(
                    children: [
                      Text(
                        'Ein Kunde sagt',
                        style: TextStyle(
                          color: main.primaryColor,
                          fontSize: 50,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                  const Text(
                    'I was very happy because I chose my hairstyle here.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 179, 179, 179),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const Text(
                    'The barber is very friendly, gives excellent treatment and has great ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 179, 179, 179),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const Text(
                    'techniques to choose a suitable hairstyle for your hair. ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 179, 179, 179),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const Text(
                    'I advise everyone in the town or tourists to choose a new haircut here.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 179, 179, 179),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  const Text(
                    '- Adam Smith',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
