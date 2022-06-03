import 'package:flutter/material.dart';

import 'package:ffuf_second_capstone/main.dart';
import 'package:ffuf_second_capstone/responsive_safe_area.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: ResponsiveSafeArea(
        builder: (context, height, width) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 26,
                  child: Row(
                    children: const [
                      Image(
                        image: AssetImage(
                          'assets/app_images/app_logo.png',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Image(
                  image: const AssetImage('assets/app_images/splash.png'),
                  height: (height - 380 < 1) ? height / 2 : height - 380,
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Text(
                      'Find a Perfect',
                      style: textTheme.headlineLarge,
                    ),
                    Text(
                      'Job Match',
                      style: textTheme.headlineLarge,
                    ),
                    Text(
                      'Finding your dream job is easier',
                      style: textTheme.headlineSmall,
                    ),
                    Text(
                      'and faster with Job Grindr',
                      style: textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 54,
                      width: 261,
                      child: ElevatedButton(
                        // todo: change on pressed navigation to login
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(MainApp.routeName);
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                colorScheme.secondary)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Let\'s Get Started',
                              style: textTheme
                                  .titleSmall
                                  ?.copyWith(color: Colors.white),
                            ),
                            const SizedBox(width: 10),
                            const Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
