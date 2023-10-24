import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage ({Key?key}): super(key : key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Text("Rubrix",
            style: (TextStyle(
              fontSize: 30,
            )),
          ),
        ],
      ),
    );
  }
}