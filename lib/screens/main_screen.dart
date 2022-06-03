import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:ffuf_second_capstone/change_notifiers/tab_manager.dart';
import 'package:ffuf_second_capstone/widgets/main_screen_bottomnavbar.dart';
import 'package:ffuf_second_capstone/screens/home_screen.dart';
import 'package:ffuf_second_capstone/screens/messages_screen.dart';
import 'package:ffuf_second_capstone/screens/profile_screen.dart';
import 'package:ffuf_second_capstone/screens/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const routeName = '/main_screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  PageController? _pageController;

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;


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
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor),
      duration: const Duration(milliseconds: 250,),
      child: Scaffold(
        extendBody: true,
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              Provider.of<TabManager>(context, listen: false).goToTab(index);
            },
            children: [
              HomeScreen(
                onMenuTap: (){
                  setState((){
                    if(isDrawerOpen) {
                      xOffset= 0;
                      yOffset = 0;
                      scaleFactor = 1;
                      isDrawerOpen = false;
                    }
                    else {
                      xOffset= MediaQuery.of(context).size.width * 0.8;
                      yOffset = MediaQuery.of(context).size.height * 0.1;
                      scaleFactor = 0.8;
                      isDrawerOpen = true;
                    }
                  });
                },
              ),
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
      ),
    );
  }
}
