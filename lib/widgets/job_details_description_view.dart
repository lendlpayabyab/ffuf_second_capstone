import 'package:flutter/material.dart';

import 'package:ffuf_second_capstone/models/company_info.dart';

class JobDetailsDescriptionView extends StatelessWidget {
  final JobListing jobListing;

  const JobDetailsDescriptionView({
    Key? key,
    required this.jobListing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Job Description:',
            style: textTheme.bodyLarge?.copyWith(fontSize: 18),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  jobListing.jobDescription,
                  style: textTheme.bodySmall?.copyWith(fontSize: 13),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'Qualifications:',
            style: textTheme.bodyLarge?.copyWith(fontSize: 18),
          ),
          const SizedBox(height: 10),
          JobDescriptionListViewBuilder(list: jobListing.requirements),
          const SizedBox(height: 10),
          Text(
            'Responsibilities:',
            style: textTheme.bodyLarge?.copyWith(fontSize: 18),
          ),
          const SizedBox(height: 10),
          JobDescriptionListViewBuilder(list: jobListing.responsibilities),
          const SizedBox(height: 10),
          Text(
            'Schedule:',
            style: textTheme.bodyLarge?.copyWith(fontSize: 18),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  jobListing.schedule,
                  style: textTheme.bodySmall?.copyWith(fontSize: 13),
                ),
              ),
            ],
          ),
          Text(
            'Perks:',
            style: textTheme.bodyLarge?.copyWith(fontSize: 18),
          ),
          const SizedBox(height: 10),
          JobDescriptionListViewBuilder(list: jobListing.perks),
        ],
      ),
    );
  }
}

class JobDescriptionListViewBuilder extends StatelessWidget {
  const JobDescriptionListViewBuilder({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '\u2022',
              style: textTheme.bodySmall?.copyWith(fontSize: 13),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: Text(
                list[index],
                style: textTheme.bodySmall?.copyWith(fontSize: 13),
              ),
            )
          ],
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemCount: list.length,
    );
  }
}
