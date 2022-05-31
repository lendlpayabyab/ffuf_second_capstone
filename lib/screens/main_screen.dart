import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../change_notifiers/tab_manager.dart';
import '../widgets/main_screen_bottomnavbar.dart';
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

  PageController? _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            Provider.of<TabManager>(context, listen: false).goToTab(index);
          },
          children: <Widget>[
            HomeScreen(),
            const MessagesScreen(),
            const ProfileScreen(),
            const SettingsScreen(),
          ],
        ),
      ),
      bottomNavigationBar: MainScreenBottomNavBar(
        onTap: () {
          _pageController!.animateToPage(Provider.of<TabManager>(context, listen: false).selectedTab,
              duration: const Duration(milliseconds: 250), curve: Curves.decelerate);
        },
      ),
      // ClipRRect(
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(30.5),
      //     topRight: Radius.circular(30.5),
      //   ),
      //   child: BottomNavigationBar(
      //     selectedLabelStyle: TextStyle(
      //       fontFamily: 'Poppins',
      //     ),
      //     unselectedItemColor: Theme.of(context).colorScheme.primary,
      //     selectedItemColor: Theme.of(context).colorScheme.secondary,
      //     currentIndex: _selectedIndex,
      //     onTap: _onItemTapped,
      //     items: [
      //       BottomNavigationBarItem(
      //         icon: SvgPicture.asset('assets/custom_svg_icons/home.svg'),
      //         label: 'Home',
      //         backgroundColor: Theme.of(context).colorScheme.tertiary,
      //       ),
      //       BottomNavigationBarItem(
      //         icon: SvgPicture.asset('assets/custom_svg_icons/message.svg'),
      //         label: 'Messages',
      //         backgroundColor: Theme.of(context).colorScheme.tertiary,
      //       ),
      //       BottomNavigationBarItem(
      //         icon: SvgPicture.asset('assets/custom_svg_icons/profile.svg'),
      //         label: 'Profile',
      //         backgroundColor: Theme.of(context).colorScheme.tertiary,
      //       ),
      //       BottomNavigationBarItem(
      //         icon: SvgPicture.asset('assets/custom_svg_icons/settings.svg'),
      //         label: 'Settings',
      //         backgroundColor: Theme.of(context).colorScheme.tertiary,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
