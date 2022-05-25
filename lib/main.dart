import 'package:flutter/material.dart';

import './screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Tinder',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.cyan).copyWith(secondary: Color(0xFF4CA6A8)),
      ),
      themeMode: ThemeMode.light, // todo: make switchable in settings
      home: SplashScreen(),
      routes: {},
    );
  }
}
