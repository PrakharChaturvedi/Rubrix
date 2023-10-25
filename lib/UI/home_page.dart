// ignore_for_file: unused_import

import 'package:flutter/material.dart';
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
    // DateTime now = DateTime.now();
    // String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(formattedDate),
                // Text("Today"),
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
      child : Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          IconButton(
           icon: Icon(
            Get.isDarkMode ? Icons.sunny : Icons.nights_stay_rounded,
            size: 20,
            color: Get.isDarkMode ? Colors.white : Colors.black54,
          ),
           onPressed: (){
              ThemeService().switchTheme();
          },
          ),

          Text("Rubrix",
              style: TextStyle(
                  color: Get.isDarkMode ? Colors.white : Colors.black54,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  fontSize: 40)
          ),

         FloatingActionButton.extended(
            elevation: 4.0,
            icon: const Icon(Icons.add),
            label: const Text('Add a task'),
            onPressed: () {
                ThemeService().switchTheme();
            },
          ),
          // MyButton(label: "+ Add a task", onTap: ()=>null)
        ],
      ),
    );
  }
}
