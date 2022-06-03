import 'package:flutter/material.dart';

import 'package:ffuf_second_capstone/models/company_info.dart';

class JobDetailsCompanyView extends StatelessWidget {
  final Company company;

  const JobDetailsCompanyView({
    Key? key,
    required this.company,
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
            'About the Company:',
            style: textTheme.bodyLarge?.copyWith(fontSize: 18),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                company.companyDescription,
                style: textTheme.bodySmall?.copyWith(fontSize: 13),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
