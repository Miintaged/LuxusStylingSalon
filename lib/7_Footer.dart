import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luxus_styling_salon/main.dart' as main;

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: main.greyOne,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Made with  ',
              style: TextStyle(
                fontSize: 10,
                color: Color.fromARGB(255, 174, 174, 174),
              ),
            ),
            const Icon(
              CupertinoIcons.heart,
              size: 10,
              color: Color.fromARGB(255, 174, 174, 174),
            ),
            const Text(
              '  in Innsbruck  ',
              style: TextStyle(
                fontSize: 10,
                color: Color.fromARGB(255, 174, 174, 174),
              ),
            ),
            Container(
              height: 10,
              width: 1,
              color: const Color.fromARGB(255, 174, 174, 174),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Container(
                      color: Colors.transparent,
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width *
                                        .02),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.close_rounded,
                                    color: main.primaryColor,
                                    size:
                                        MediaQuery.of(context).size.width * .05,
                                  ),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                ),
                              ),
                            ],
                          ),
                          main.verticalSpacingLarge(context),
                          const ImpressumColumn(
                              title: 'Firmenwortlaut', body: 'Dein Firmenname'),
                          const ImpressumColumn(
                              title: 'Inhaber', body: 'Dein Name'),
                          const ImpressumColumn(
                              title: 'Firmensitz',
                              body: 'Bürgerstraße 9, 6020, Innsbruck'),
                          const ImpressumColumn(
                              title: 'Unternehmensgegenstand', body: 'Friseur'),
                          const ImpressumColumn(
                              title: 'Website', body: 'luxusstylingsalon.at'),
                          const ImpressumColumn(
                              title: 'UID-Nummer', body: 'ATXXXXXXXXX'),
                          const ImpressumColumn(title: 'Mitgliedschaften bei der Wirtschaftskammerorganisation', body: 'WKO, Bundesinnung der Friseur, Landesinnung der Friseure')
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Text(
                '  Impressum  ',
                style: TextStyle(
                  fontSize: 10,
                  color: Color.fromARGB(255, 174, 174, 174),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImpressumColumn extends StatelessWidget {
  final String title;
  final String body;

  const ImpressumColumn({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$title:',
          style: const TextStyle(color: Colors.white),
        ),
        Text(
          body,
          style: const TextStyle(color: Color.fromARGB(255, 174, 174, 174)),
        ),
        main.verticalSpacingSmall(context),
      ],
    );
  }
}
