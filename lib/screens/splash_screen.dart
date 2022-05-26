import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/text_builder.dart';
import '../responsive_safe_area.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ResponsiveSafeArea(
        builder: (context, height, width){
          return SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 26,
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage(
                          'assets/app_images/app_logo.png',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image(
                  image: AssetImage('assets/app_images/splash.png'),
                  height: (height - 380 < 1) ? height/2 : height - 380,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: Column(
                    children: [
                      TextBuilder(
                        text: 'Find a Perfect',
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1A1D1E),
                      ),
                      TextBuilder(
                        text: 'Job Match',
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1A1D1E),
                      ),
                      TextBuilder(
                        text: 'Finding your dream job is easier',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6A6A6A),
                      ),
                      TextBuilder(
                        text: 'and faster with Job Grindr',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6A6A6A),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 54,
                        width: 261,
                        child: ElevatedButton(
                          // todo: change on pressed navigation to login
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed(MainApp.routeName);
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.primary)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextBuilder(
                                text: 'Let\'s Get Started',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                              Icon(
                                Icons.arrow_forward_rounded,
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
