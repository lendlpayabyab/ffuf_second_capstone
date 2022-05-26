import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/company_info.dart';
import '../widgets/text_builder.dart';

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
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
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
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textHeader2(text: jobListing.position),
              buildJobType(jobListing),
            ],
          ),
          Expanded(child: SizedBox()),
          subText(
            text: '${NumberFormat('\$#,##0.00').format(jobListing.salary)}/m',
            color: Color(0xFF6A6A6A),
          ),
        ],
      ),
    );
  }

  Widget buildJobType(JobListing jobListing) {
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

    return subText(
      text: jobTypeString,
      color: Color(0xFF6A6A6A),
    );
  }
}
