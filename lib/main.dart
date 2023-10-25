import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/style.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: pageBgColor,
      appBar: AppBar(
        backgroundColor: headBgColor,
        title: Text("Kulineran",
            style: TextStyle(
              color: Color(0xFFA6F6FF),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
        centerTitle: true,
      ),
      body: HomePage(),
    ));
  }
}
