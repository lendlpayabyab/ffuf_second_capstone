import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/company_info.dart';

class RecentJobCardBuilder extends StatelessWidget {
  final JobListing jobListing;

  const RecentJobCardBuilder({
    Key? key,
    required this.jobListing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
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
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  jobListing.position,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              buildJobType(context, jobListing),
            ],
          ),
          const Expanded(child: SizedBox()),
          Text(
              '${NumberFormat('\$#,##0.00').format(jobListing.salary)}/m',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }

  Widget buildJobType(BuildContext context, JobListing jobListing) {
    String jobTypeString;

    switch (jobListing.jobType) {
      case JobType.fullTime:
        jobTypeString = 'Full Time';
        break;
      case JobType.partTime:
        jobTypeString = 'Part Time';
        break;
      case JobType.contract:
        jobTypeString = 'Contract';
        break;
      case JobType.freelance:
        jobTypeString = 'Freelance';
        break;
      case JobType.remote:
        jobTypeString = 'Remote';
        break;
    }

    return Text(
        jobTypeString,
      style: Theme.of(context).textTheme.labelSmall,
    );
  }
}
