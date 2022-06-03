import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:ffuf_second_capstone/screens/splash_screen.dart';
import 'package:ffuf_second_capstone/change_notifiers/tab_manager.dart';
import 'package:ffuf_second_capstone/change_notifiers/settings.dart';
import 'package:ffuf_second_capstone/screens/main_screen.dart';
import 'package:ffuf_second_capstone/app_theme.dart';
import 'package:ffuf_second_capstone/screens/root_screen.dart';
import 'package:ffuf_second_capstone/screens/settings_notifications_screen.dart';

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
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: Provider.of<Settings>(context).darkMode ? ThemeMode.dark : ThemeMode.light,
      home: SplashScreen(),
      routes: {
        MainScreen.routeName: (context) => MainScreen(),
        MainApp.routeName: (context) => MainApp(),
        SettingsNotificationScreen.routeName : (context) => SettingsNotificationScreen(),
        RootScreen.routeName : (context) => RootScreen(),
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
      child: RootScreen(),
    );
  }
}
