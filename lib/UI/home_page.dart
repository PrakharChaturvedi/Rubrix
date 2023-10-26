// ignore_for_file: unused_import

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
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Center(
                  child: Text("WHO IS GONNA CARRY THE LOG!",
                  style: TextStyle(
                    // color: Get.isDarkMode ? Colors.white : Colors.black54,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                ),

                Center(
                  child: DatePicker(
                    DateTime.now(),
                    height: 100,
                    width: 75,
                    initialSelectedDate: DateTime.now(),
                    deactivatedColor: Colors.deepPurpleAccent,

                    dateTextStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                    ),

                    dayTextStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                    ),

                    selectedTextColor: Colors.white,
                    selectionColor: Colors.cyan,
                  ),
                ),

                const Center(
                    child: Text("Today's Tasks")
                ),

                const Center(
                  child: Image(
                    // image: AssetImage('images/night_banner.png'),
                    // image: AssetImage('images/night_banner.png'),
                    image: AssetImage('images/evening_banner.png'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      //BottomAppBar for mode changes and task Additions
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
