import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/settings.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // todo: make a messages screen
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messages',
          style: Theme
              .of(context)
              .textTheme
              .bodyLarge,
        ),
        centerTitle: true,
        backgroundColor: Theme
            .of(context)
            .scaffoldBackgroundColor,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 5,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.search),
            ),
          ),
        ],
        actionsIconTheme: Provider
            .of<Settings>(context)
            .darkMode
            ? IconThemeData(color: Colors.white)
            : IconThemeData(
          color: Color(0xFF1A1D1E),
        ),
      ),
    );
  }
}
