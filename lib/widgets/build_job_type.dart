import 'package:ffuf_second_capstone/models/company_info.dart';
import 'package:flutter/material.dart';

class BuildJobType extends StatelessWidget {
  final JobListing jobListing;
  final double? fontSize;

  const BuildJobType({
    Key? key,
    required this.jobListing,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

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
      style: textTheme.labelSmall?.copyWith(fontSize: fontSize),
    );
  }
}
