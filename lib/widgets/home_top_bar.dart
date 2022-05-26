import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTopBar extends StatelessWidget {
  final double width;

  const HomeTopBar({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            width: 44,
            height: 44,
            child: IconButton(
              // todo : app drawer for this button
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.text_justifyleft,
                size: 22,
              ),
            ),
          ),
          CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage('assets/profile_images/asdsd.jpg'),
          ),
        ],
      ),
    );
  }
}
