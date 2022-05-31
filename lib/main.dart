import 'package:ffuf_second_capstone/screens/settings_notifications_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/splash_screen.dart';
import 'change_notifiers/tab_manager.dart';
import 'change_notifiers/settings.dart';
import './screens/main_screen.dart';
import './app_theme.dart';

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
