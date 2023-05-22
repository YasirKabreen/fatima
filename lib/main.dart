import 'package:fatima_hassan/mainhome.dart';
import 'package:fatima_hassan/screens/time.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fatima App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}