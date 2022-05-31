import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            width: 44,
            height: 44,
            child: IconButton(
              // todo : app drawer for this button
              onPressed: () {},
              icon: SvgPicture.asset('assets/custom_svg_icons/sidebar.svg'),
            ),
          ),
          const CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage('assets/profile_images/asdsd.jpg'),
          ),
        ],
      ),
    );
  }
}
