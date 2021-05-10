import 'package:flutter/material.dart';
import 'package:maditation_app/screens/home_page/home.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daily Exercieses',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Cairo",
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomePage(),
    );
  }
}
