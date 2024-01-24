import 'package:flutter/material.dart';
import 'package:multiplatform_apps/utils/colors.dart';
import 'package:multiplatform_apps/view/home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Expense Tracker",
      theme: ThemeData(
        fontFamily: "HindSiliguri",
        brightness: Brightness.light,
          primaryColor: AppColors.primary
      ),
      home: const Home(),
    );
  }
}
