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
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.045,
        ),
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            constraints.maxWidth <= 800
                ? const SizedBox()
                : Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: main.primaryColor),
                    ),
                    child: Image.network(
                      'https://images.pexels.com/photos/3993472/pexels-photo-3993472.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      height: MediaQuery.of(context).size.height * .5,
                    ),
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
                    SizedBox(height: MediaQuery.of(context).size.height * 0.17),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Eine Kundin sagt',
                          style: TextStyle(
                            color: main.primaryColor,
                            fontSize: MediaQuery.of(context).size.width *
                                (constraints.maxWidth <= 800 ? .08 : .035),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height *
                          (constraints.maxWidth <= 800 ? .02 : .04),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width *
                          (constraints.maxWidth <= 800 ? .8 : .4),
                      child: Text(
                        'I was very happy because I chose my hairstyle here. The barber is very friendly, gives excellent treatment and has great techniques to choose a suitable hairstyle for your hair. I advise everyone in the town or tourists to choose a new haircut here.\n- Laura Müller',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 179, 179, 179),
                          fontSize: MediaQuery.of(context).size.width *
                              (constraints.maxWidth <= 800 ? .04 : .0125),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
