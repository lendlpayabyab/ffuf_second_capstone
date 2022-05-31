import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../change_notifiers/settings.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // todo: make a messages screen
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messages',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 5,
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/custom_svg_icons/magnifying_glass.svg',
                color: Provider.of<Settings>(context).darkMode ? Colors.white : const Color(0xFF1A1D1E),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
