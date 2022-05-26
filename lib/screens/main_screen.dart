import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/tab_manager.dart';
import './home_screen.dart';
import './messages_screen.dart';
import './profile_screen.dart';
import './settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const routeName = '/main_screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  final List _pages = [
    HomeScreen(),
    MessagesScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    // todo: create the home screen
    return Consumer<TabManager>(
      builder: (context, tabManager, child) => Scaffold(
        body: _pages[tabManager.selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          currentIndex: tabManager.selectedTab,
          // selectedLabelStyle: TextStyle(color: Colors.blue),
          onTap: (index) => tabManager.goToTab(index),
          unselectedItemColor: Theme.of(context).colorScheme.primary,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_text_fill),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_solid),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_rounded),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
