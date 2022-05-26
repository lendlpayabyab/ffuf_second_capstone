import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/splash_screen.dart';
import './models/tab_manager.dart';
import './models/settings.dart';
import './screens/main_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => Settings(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Grindr',
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Color(0xFFFFFFFF),
        ),
        fontFamily: 'Poppins',
        colorScheme: Provider.of<Settings>(context).darkMode
            ? ColorScheme.dark(
                primary: Color(0xFF4CA6A8),
                secondary: Color(0xFFFF4141),
                background: Color(0xFF303030),
              )
            : ColorScheme.light(
                primary: Color(0xFF4CA6A8),
                secondary: Color(0xFFFF4141),
                background: Color(0xFFFBFBFB),
              ),
      ),
      home: SplashScreen(),
      routes: {
        MainScreen.routeName: (context) => MainScreen(),
        MainApp.routeName: (context) => MainApp(),
      },
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
  static const routeName = '/main_app';

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TabManager(),
        ),
      ],
      child: MainScreen(),
    );
  }
}
