import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSearchBar extends StatelessWidget {
  final double width;

  const HomeSearchBar({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: 65,
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            child: TextField(
              style: textTheme.headlineSmall,
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Search here...',
                fillColor: colorScheme.tertiary,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
              // todo : enable functionality
              onSubmitted: (_){},
            ),
          ),
          const SizedBox(
            width: 15
          ),
          Container(
            height: 54,
            width: 54,
            decoration: BoxDecoration(
              color: colorScheme.secondary,
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              icon: SvgPicture.asset('assets/custom_svg_icons/filter.svg'),
              // todo : enable functionality
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
