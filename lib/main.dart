import 'package:app_profile/profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());

  // RunApp permet de lancé notre Application
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileScreen(),
  ));
}
