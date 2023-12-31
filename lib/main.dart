import 'package:flutter/material.dart';
import 'package:flutter_time_picker_jalal/date_picker.dart';
import 'package:flutter_time_picker_jalal/rating_star.dart';
import 'package:flutter_time_picker_jalal/safe_area.dart';
import 'package:flutter_time_picker_jalal/time_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DatePicker(),
    );
  }
}

