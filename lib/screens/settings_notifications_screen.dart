import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../change_notifiers/settings.dart';
import '../responsive_safe_area.dart';

class SettingsNotificationScreen extends StatelessWidget {
  const SettingsNotificationScreen({Key? key}) : super(key: key);

  static const routeName = '/settings-notification-screen';

  @override
  Widget build(BuildContext context) {
    return Consumer<Settings>(
      builder: (context, settings, child) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(CupertinoIcons.back),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              'Notifications',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            centerTitle: true,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
            iconTheme: settings.darkMode? null : const IconThemeData(color: Color(0xFF1A1D1E)),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'New posts',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Text(
                                  'Get notified for new post updates',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                            CupertinoSwitch(
                              activeColor: Theme.of(context).colorScheme.secondary,
                              value: settings.newPost,
                              onChanged: (_) {
                                settings.toggleNewPost();
                              },
                            ),
                          ],
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
                                  'Got hired',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Text(
                                  'Get notified for getting hired',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                            CupertinoSwitch(
                              activeColor: Theme.of(context).colorScheme.secondary,
                              value: settings.gotHired,
                              onChanged: (_) {
                                settings.toggleGotHired();
                              },
                            ),
                          ],
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
                                  'Got rejected',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Text(
                                  'Get notified for getting rejected',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                            CupertinoSwitch(
                              activeColor: Theme.of(context).colorScheme.secondary,
                              value: settings.getRejected,
                              onChanged: (_) {
                                settings.toggleGetRejected();
                              },
                            ),
                          ],
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
                                  'Messages',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Text(
                                  'Get notified for getting new messages',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                            CupertinoSwitch(
                              activeColor: Theme.of(context).colorScheme.secondary,
                              value: settings.message,
                              onChanged: (_) {
                                settings.toggleMessage();
                              },
                            ),
                          ],
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
                                  'Calls',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Text(
                                  'Get notified for getting calls',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                            CupertinoSwitch(
                              activeColor: Theme.of(context).colorScheme.secondary,
                              value: settings.call,
                              onChanged: (_) {
                                settings.toggleCall();
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
