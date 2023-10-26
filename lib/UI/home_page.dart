// ignore_for_file: unused_import

import 'dart:ui';

import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rubrics/UI/widgets/button.dart';
import 'package:rubrics/UI/theme.dart';
import 'package:rubrics/services/theme_services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);

    // DateTime now = DateTime.now();
    // String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('images/night_banner.png'),
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4),
                  BlendMode.darken,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        "Who is gonna carry the log!",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),

                    Center(
                      child: DatePicker(
                        DateTime.now(),
                        height: 125,
                        width: 72.5,
                        initialSelectedDate: DateTime.now(),
                        dateTextStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),

                        dayTextStyle: const TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        monthTextStyle: const TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 0,
                        ),
                        selectedTextColor: Colors.white,
                        selectionColor: Colors.tealAccent.withOpacity(0.6),

                      ),
                    ),
                  ],
                  // Container(
                  //   child: const Center(
                  //     child: Text(
                  //       "Today's Tasks",
                  //       style: TextStyle(
                  //         fontStyle: FontStyle.normal,
                  //         fontWeight: FontWeight.bold,
                  //         fontSize: 28,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: _appBar(),
    );
  }

  _appBar() {
    return BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Get.isDarkMode ? Icons.sunny : Icons.nights_stay_rounded,
                size: 20,
                color: Get.isDarkMode ? Colors.white : Colors.black54,
              ),
              onPressed: () {
                ThemeService().switchTheme();
              },
            ),

            Text(
              "Rubrix",
              style: TextStyle(
                color: Get.isDarkMode ? Colors.white : Colors.black54,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),

            FloatingActionButton.extended(
              elevation: 4.0,
              icon: const Icon(Icons.add_circle_outline_rounded),
              label: const Text('Add a task',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              onPressed: () {
                ThemeService().switchTheme();
              },
            ),
          ],
        ),
    );
  }
}
