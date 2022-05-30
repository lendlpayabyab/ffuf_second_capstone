import 'package:ffuf_second_capstone/custom/job_grindr_icons.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  final double width;

  const HomeSearchBar({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            child: TextField(
              style: Theme.of(context).textTheme.headlineSmall,
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Search here...',
                fillColor: Theme.of(context).colorScheme.tertiary,
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
          SizedBox(
            width: 15,
          ),
          Container(
            height: 54,
            width: 54,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              icon: Icon(JobGrindrIcons.sliders),
              // todo : enable functionality
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
