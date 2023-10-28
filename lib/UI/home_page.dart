// ignore_for_file: unused_import, library_private_types_in_public_api, avoid_unnecessary_containers, unused_local_variable
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rubrics/UI/timeLine_page.dart';
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
  late String currentImage;

  @override
  void initState() {
    super.initState();
    // currentImage = _getImageForTime(DateTime.now().hour);
  }

  @override
  Widget build(BuildContext context) {
    final String currentDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final outlineColor = isDarkMode ? Colors.white : Colors.black;

    return Scaffold(
      body: Column(
        children: [
          // Container(
          //  child: Image.asset("images/evening_banner.png"),
          // ),

          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              "Welcome, Prakhar",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                fontFamily: 'RobotoMono',
              ),
            ),
          ),

          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 25,
              decoration: BoxDecoration(
                border: Border.all(
                  color: outlineColor,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DatePicker(
                DateTime.now(),
                height: 80,
                width: 70,
                initialSelectedDate: DateTime.now(),
                dateTextStyle: const TextStyle(
                  fontSize: 22,
                ),
                dayTextStyle: const TextStyle(
                  fontSize: 12,
                ),
                monthTextStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                selectedTextColor: Colors.white,
                selectionColor: Colors.deepPurpleAccent,
                deactivatedColor: Colors.white38,
              ),
            ),
          ),

          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              // currentDate,
              "Today's tasks",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          Center(
            child: Container(
              height: MediaQuery.of(context).size.height - 285,
              width: MediaQuery.of(context).size.width - 25,
              decoration: BoxDecoration(
                border: Border.all(
                  color: outlineColor,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // Align items with space in between
                children: [
                  const Text("hello"),
                  // Bottom Bar for timeline visits!
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 2.0,
                        color: outlineColor,
                      ),
                      Container(
                        color: Colors.deepPurpleAccent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: const Text(
                                "Go to Time Line",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                ),
                              ),
                            ),
                            Container(
                              child: IconButton(
                                icon: const Icon(Icons.navigate_next_rounded),
                                onPressed: () {
                                  // ThemeService().switchTheme();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _appBar(),
    );
  }

  BottomAppBar _appBar() {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: const Icon(Icons.sunny),
            onPressed: () {
              ThemeService().switchTheme();
            },
          ),
          const Text(
            "Rubrix",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.ac_unit_rounded),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const timeLine_Page()));
            },
          ),
        ],
      ),
    );
  }
}
