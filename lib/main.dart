import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliver_custom_appbar/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'/':(context) => Home_Screen()},
    ),
  );
}
