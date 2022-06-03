import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:ffuf_second_capstone/change_notifiers/tab_manager.dart';

class MainScreenBottomNavBar extends StatelessWidget {
  final Function onTap;

  const MainScreenBottomNavBar({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {

    final colorScheme = Theme.of(context).colorScheme;

    const double borderRadius = 30.5;

    return Container(
      decoration: BoxDecoration(
        color: colorScheme.tertiary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(borderRadius),
          topRight: Radius.circular(borderRadius),
        ),
      ),
      height: 70,
      padding: const EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
        bottom: 0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _SelectedIcon(
            image: 'assets/custom_svg_icons/home.svg',
            index: 0,
            label: 'Home',
            onTap: onTap,
          ),
          _SelectedIcon(
            image: 'assets/custom_svg_icons/message.svg',
            index: 1,
            label: 'Messages',
            onTap: onTap,
          ),
          _SelectedIcon(
            image: 'assets/custom_svg_icons/profile.svg',
            index: 2,
            label: 'Profile',
            onTap: onTap,
          ),
          _SelectedIcon(
            image: 'assets/custom_svg_icons/settings.svg',
            index: 3,
            label: 'Settings',
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}

class _SelectedIcon extends StatelessWidget {
  const _SelectedIcon({
    required this.image,
    required this.index,
    required this.label,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final String image;
  final int index;
  final String label;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    const double defaultIconHeight = 20;
    const double selectedIconHeight = 20;

    return Consumer<TabManager>(
      builder: (context, tabManager, child) {
        bool isSelected = tabManager.selectedTab == index;

        return TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(0),
            splashFactory: NoSplash.splashFactory,
          ),
          onPressed: () {
            tabManager.goToTab(index);
            onTap();
          },
          child: Column(
            mainAxisAlignment:
                (isSelected) ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              SvgPicture.asset(
                image,
                height: (isSelected) ? selectedIconHeight : defaultIconHeight,
                color:
                    (isSelected) ? colorScheme.secondary : colorScheme.primary,
              ),
              SizedBox(
                height: (isSelected) ? 17 : 5,
              ),
              (isSelected)
                  ? SvgPicture.asset(
                      'assets/custom_svg_icons/selection.svg',
                      color: colorScheme.secondary,
                      fit: BoxFit.cover,
                    )
                  : Text(
                      label,
                      style: textTheme.labelSmall?.copyWith(
                        color: colorScheme.primary,
                        letterSpacing: 0,
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
