import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luxus_styling_salon/main.dart' as main;

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  List<String> adresse = ["Bürgerstraße 9,", "6020 Innsbruck"];

  List<List<dynamic>> weekdays = [
    ["Montag", "9am - 7pm"],
    ["Dienstag", "9am - 7pm"],
    ["Mittwoch", "9am - 7pm"],
    ["Donnerstag", "9am - 7pm"],
    ["Freitag", "9am - 7pm"],
    ["Samstag", "9am - 6pm"],
    ["Sonntag", "Geschlossen"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
      decoration: BoxDecoration(
        color: main.greyOne,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              border: Border.all(color: main.primaryColor),
            ),
          ),
          main.horizontalSpacingLarge(context),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.4,
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
            decoration: BoxDecoration(
              border: Border.all(color: main.primaryColor),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                main.verticalSpacingSmall(context),
                Row(
                  children: [
                    const Icon(Icons.location_pin, color: Colors.white,),
                    main.horizontalSpacingMedium(context),
                    Row(children: [
                      Text(adresse[0], style: const TextStyle(fontWeight: FontWeight.w100),),
                      main.horizontalSpacingSmall(context), 
                      Text(adresse[1], style: const TextStyle(fontWeight: FontWeight.w100),),
                    ],)
                  ],
                ),
                main.verticalSpacingMedium(context),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Öffnungszeiten',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                main.verticalSpacingSmall(context),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 7,
                    itemBuilder: ((context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text(weekdays[index][0], style: const TextStyle(fontWeight: FontWeight.w200),),
                          ),
                          main.horizontalSpacingLarge(context),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 1,
                              color: main.primaryColor,
                            ),
                          ),
                          main.horizontalSpacingLarge(context),
                          Expanded(
                            flex: 2,
                            child: Text(weekdays[index][1], style: const TextStyle(fontWeight: FontWeight.w200),),
                          )
                        ],
                      );
                    }),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
