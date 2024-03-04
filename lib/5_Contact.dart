import 'package:flutter/material.dart';
import 'package:luxus_styling_salon/main.dart' as main;

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  List inputs = [
    {
      'placeholder': 'Datum',
      'prefix': const Icon(Icons.calendar_month),
      'value': null,
      'type': 'date'
    },
    {
      'placeholder': 'Zeit',
      'prefix': const Icon(Icons.access_time_outlined),
      'value': null,
      'type': 'time'
    },
    {
      'placeholder': 'Haarschnitt',
      'prefix': const Icon(Icons.cut_outlined),
      'value': null,
      'type': 'text',
    },
  ];

  Widget inputWrapper({
    required BuildContext context,
    required Function() onTap,
    required Widget child,
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width <= 800
              ? MediaQuery.of(context).size.width * .9
              : MediaQuery.of(context).size.width * .2,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white.withOpacity(.25),
              width: 1,
            ),
          ),
          child: child,
        ),
      ),
    );
  }

  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  TextEditingController haircut = TextEditingController();
  TextEditingController phonenumber = TextEditingController();

  String zero(int num) {
    if (num < 10) {
      return '0$num';
    }
    return '$num';
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 800) {
          return Container(
            color: main.greyOne,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'BUCHE EINEN TERMIN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: width * .1,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Fülle das Formular aus und erhalte einen Termin',
                  style: TextStyle(
                    fontSize: width * .04,
                    color: Colors.white.withOpacity(.8),
                  ),
                ),
                SizedBox(height: width * .02),
                // INPUTS
                inputWrapper(
                  context: context,
                  onTap: () async {
                    selectedDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(const Duration(days: 30)),
                    );
                    setState(() {});
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.white.withOpacity(.5),
                      ),
                      SizedBox(width: width * .025),
                      Text(
                        selectedDate == null
                            ? 'Datum'
                            : '${zero(selectedDate!.day)}.${zero(selectedDate!.month)}',
                        style: TextStyle(
                          color: Colors.white.withOpacity(.5),
                        ),
                      ),
                    ],
                  ),
                ),
                inputWrapper(
                  context: context,
                  onTap: () async {
                    selectedTime = await showTimePicker(
                        context: context, initialTime: TimeOfDay.now());
                    setState(() {});
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.access_time_sharp,
                        color: Colors.white.withOpacity(.5),
                      ),
                      SizedBox(width: width * .025),
                      Text(
                        selectedTime == null
                            ? 'Zeit'
                            : '${zero(selectedTime!.hour)}:${zero(selectedTime!.minute)}',
                        style: TextStyle(
                          color: Colors.white.withOpacity(.5),
                        ),
                      ),
                    ],
                  ),
                ),
                inputWrapper(
                  context: context,
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.cut,
                        color: Colors.white.withOpacity(.5),
                      ),
                      SizedBox(width: width * .02),
                      Text(
                        'Haarschnitt',
                        style: TextStyle(
                          color: Colors.white.withOpacity(.5),
                        ),
                      ),
                    ],
                  ),
                ),
                inputWrapper(
                  context: context,
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.white.withOpacity(.5),
                      ),
                      SizedBox(width: width * .02),
                      Text(
                        'Handynummer',
                        style: TextStyle(
                          color: Colors.white.withOpacity(.5),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  margin: const EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width <= 800
                      ? MediaQuery.of(context).size.width * .9
                      : MediaQuery.of(context).size.width * .2,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: main.primaryColor,
                      width: 1,
                    ),
                  ),
                  child: const Text(
                    'Jetzt Buchen',
                  ),
                ),
                SizedBox(height: height * .05),
              ],
            ),
          );
        }
        return SizedBox(
          height: width * .7,
          width: width,
          child: Center(
            child: Container(
              color: main.greyOne,
              height: width * .5,
              width: width * .75,
              child: Row(
                children: [
                  Image.asset(
                    'assets/about.png',
                    height: width * .5,
                    // width: width * .3,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: width * .03),
                    margin: EdgeInsets.only(top: height * .025),
                    width: width * .37,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'BUCHE EINEN TERMIN',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: width * .025,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Fülle das Formular aus und erhalte einen Termin',
                          style: TextStyle(
                            fontSize: width * .0075,
                            color: Colors.white.withOpacity(.8),
                          ),
                        ),
                        SizedBox(height: width * .02),
                        // INPUTS
                        inputWrapper(
                          context: context,
                          onTap: () async {
                            selectedDate = await showDatePicker(
                              context: context,
                              firstDate: DateTime.now(),
                              lastDate:
                                  DateTime.now().add(const Duration(days: 30)),
                            );
                            setState(() {});
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                color: Colors.white.withOpacity(.5),
                              ),
                              SizedBox(width: width * .025),
                              Text(
                                selectedDate == null
                                    ? 'Datum'
                                    : '${zero(selectedDate!.day)}.${zero(selectedDate!.month)}',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                        inputWrapper(
                          context: context,
                          onTap: () async {
                            selectedTime = await showTimePicker(
                                context: context, initialTime: TimeOfDay.now());
                            setState(() {});
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.access_time_sharp,
                                color: Colors.white.withOpacity(.5),
                              ),
                              SizedBox(width: width * .025),
                              Text(
                                selectedTime == null
                                    ? 'Zeit'
                                    : '${zero(selectedTime!.hour)}:${zero(selectedTime!.minute)}',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                        inputWrapper(
                          context: context,
                          onTap: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.cut,
                                color: Colors.white.withOpacity(.5),
                              ),
                              SizedBox(width: width * .02),
                              Text(
                                'Haarschnitt',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                        inputWrapper(
                          context: context,
                          onTap: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.white.withOpacity(.5),
                              ),
                              SizedBox(width: width * .02),
                              Text(
                                'Handynummer',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          margin: const EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: main.primaryColor,
                              width: 1,
                            ),
                          ),
                          width: MediaQuery.of(context).size.width <= 800
                              ? MediaQuery.of(context).size.width * .9
                              : MediaQuery.of(context).size.width * .2,
                          child: const Text(
                            'Jetzt Buchen',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
