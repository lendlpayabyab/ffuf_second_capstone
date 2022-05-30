import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './home_screen.dart';
import './messages_screen.dart';
import './profile_screen.dart';
import './settings_screen.dart';
import '../custom/job_grindr_icons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const routeName = '/main_screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      //
      //
      //using this page controller you can make beautiful animation effects
      _pageController!.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.decelerate);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _selectedIndex = index);
          },
          children: <Widget>[
            HomeScreen(),
            MessagesScreen(),
            ProfileScreen(),
            SettingsScreen(),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.5),
          topRight: Radius.circular(30.5),
        ),
        child: BottomNavigationBar(
          selectedLabelStyle: TextStyle(
            fontFamily: 'Poppins',
          ),
          unselectedItemColor: Theme.of(context).colorScheme.primary,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(JobGrindrIcons.home),
              label: 'Home',
              backgroundColor: Theme.of(context).colorScheme.tertiary,
            ),
            BottomNavigationBarItem(
              icon: Icon(JobGrindrIcons.speechBubble),
              label: 'Messages',
              backgroundColor: Theme.of(context).colorScheme.tertiary,
            ),
            BottomNavigationBarItem(
              icon: Icon(JobGrindrIcons.profile),
              label: 'Profile',
              backgroundColor: Theme.of(context).colorScheme.tertiary,
            ),
            BottomNavigationBarItem(
              icon: Icon(JobGrindrIcons.settings),
              label: 'Settings',
              backgroundColor: Theme.of(context).colorScheme.tertiary,
            ),
          ],
        ),
      ),
    );
  }
}
