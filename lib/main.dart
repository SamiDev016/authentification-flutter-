import 'package:authentification_design/pages/login_page.dart';
import 'package:authentification_design/theme/dark_mode.dart';
import 'package:authentification_design/theme/light_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
      darkTheme: darkMode,
      debugShowCheckedModeBanner: false,
      home: LoginPage()
    );
  }
}
