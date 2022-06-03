import 'package:flutter/material.dart';
import 'package:ffuf_second_capstone/models/company_info.dart';
import 'package:ffuf_second_capstone/widgets/job_details_review_builder.dart';

class JobDetailsReviewsView extends StatelessWidget {

  final List<CompanyReviews> companyReviews;

  const JobDetailsReviewsView({
    Key? key,
    required this.companyReviews,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListView.separated(
      padding: const EdgeInsets.all(15),
      itemBuilder: (context, index) => JobDetailsReviewBuilder(companyReviews: companyReviews[index]),
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemCount: companyReviews.length,
    );
  }
}

