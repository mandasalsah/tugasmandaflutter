import 'package:bisamandayuks/pages/DoaPage.dart';
import 'package:bisamandayuks/pages/HomePage.dart';
import 'package:bisamandayuks/pages/login.dart';
import 'package:bisamandayuks/pages/main_page.dart';
import 'package:bisamandayuks/pages/profile.dart';
import 'package:bisamandayuks/pages/register.dart';
import 'package:bisamandayuks/pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/":(context) => Splash(),
    '/LoginPage' :(context) => LoginPage(),
    '/Register' :(context) => Register(),
    '/MainPage':(context) => MainPage(),
    },
  ));
}

