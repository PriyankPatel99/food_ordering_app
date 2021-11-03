import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:food_ordering_app/screens/Restaurant1.dart';
import 'package:food_ordering_app/screens/home_page.dart';
import 'package:food_ordering_app/screens/intro_page.dart';
import 'package:food_ordering_app/screens/login.dart';
import 'package:food_ordering_app/screens/menu_page.dart';

import 'package:food_ordering_app/theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemes.LightTheme,
      darkTheme: MyThemes.DarkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: MenuPage(),
    );
  }
}
