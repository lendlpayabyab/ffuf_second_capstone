import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:ffuf_second_capstone/models/company_info.dart';
import 'package:ffuf_second_capstone/widgets/build_job_type.dart';

class RecentJobCardBuilder extends StatelessWidget {
  final JobListing jobListing;

  const RecentJobCardBuilder({
    Key? key,
    required this.jobListing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: 80,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colorScheme.tertiary,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A403B4B),
            blurRadius: 35,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: Image(
              image: AssetImage(jobListing.logoUrl),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                jobListing.position,
                style: textTheme.titleMedium,
              ),
              BuildJobType(
                jobListing: jobListing,
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          Text(
            '${NumberFormat('\$#,##0.00').format(jobListing.salary)}/m',
            style: textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
