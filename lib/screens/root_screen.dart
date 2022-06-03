import 'package:flutter/material.dart';

import 'package:ffuf_second_capstone/screens/dashboard_screen.dart';
import 'package:ffuf_second_capstone/screens/main_screen.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  static const routeName = '/root-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DashboardScreen(),
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(-20, 7),
                  blurRadius: 24,
                  color: Color(0x0F000000),
                ),
              ],
            ),
            child: const MainScreen(),
          ),
        ],
      ),
    );
  }
}
