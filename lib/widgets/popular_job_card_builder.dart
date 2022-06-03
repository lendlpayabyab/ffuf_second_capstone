import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:ffuf_second_capstone/models/company_info.dart';

class PopularJobCardBuilder extends StatelessWidget {
  final JobListing jobListing;

  const PopularJobCardBuilder({
    Key? key,
    required this.jobListing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(15),
      height: 160,
      width: 260,
      decoration: BoxDecoration(
        color: colorScheme.tertiary,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A000000),
            blurRadius: 35,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: ClipRect(
                      child: Image(
                        image: AssetImage(jobListing.logoUrl),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    jobListing.companyName,
                    style: textTheme.labelSmall,
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.heart,
                  size: 20,
                  color: colorScheme.primary,
                ),
              ),
            ],
          ),
          Text(
            jobListing.position,
            style: textTheme.titleSmall,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '${NumberFormat('\$#,##0.00').format(jobListing.salary)}/m',
                style: textTheme.labelLarge,
              ),
              const SizedBox(width: 5),
              Text(
                jobListing.location,
                style: textTheme.labelSmall,
              ),
            ],
          )
        ],
      ),
    );
  }
}
