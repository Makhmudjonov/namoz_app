import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:timezone/data/latest.dart' as vaqt;
import 'package:yanvar31/screens/homepage2.dart';

import 'core/constant.dart';

void main() {
  vaqt.initializeTimeZones();
  Hive.initFlutter;

  ConstIslam.adapter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePageSeconds(),
    );
  }
}
