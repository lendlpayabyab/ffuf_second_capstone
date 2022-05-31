import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../change_notifiers/settings.dart';
import '../responsive_safe_area.dart';
import '../screens/settings_notifications_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Settings>(
      builder: (context, settings, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Settings',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            centerTitle: true,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
          ),
          body: ResponsiveSafeArea(builder: (context, height, width) {
            return Container(
              padding: const EdgeInsets.only(
                top: 40,
                left: 20,
                right: 20,
                bottom: 20,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        InkWell(
                          child: Text(
                            'Notifications',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          onTap: () {
                            Navigator.of(context).pushNamed(SettingsNotificationScreen.routeName);
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dark mode',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Text(
                                  'Enable dark theme',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                            CupertinoSwitch(
                              activeColor: Theme.of(context).colorScheme.secondary,
                              value: settings.darkMode,
                              onChanged: (_) {
                                settings.toggleDarkMode();
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
        );
      },
    );
  }
}
