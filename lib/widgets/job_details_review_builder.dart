import 'package:flutter/material.dart';
import 'package:ffuf_second_capstone/models/company_info.dart';

class JobDetailsReviewBuilder extends StatelessWidget {
  final CompanyReviews companyReviews;

  const JobDetailsReviewBuilder({
    Key? key,
    required this.companyReviews,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colorScheme.background,
        borderRadius: BorderRadius.circular(12.5),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(-0, -0),
            color: Color(0x1F000000),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        companyReviews.position,
                        style: textTheme.bodyLarge?.copyWith(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        '${companyReviews.yearsOfExp} yrs. exp.',
                        style: textTheme.bodySmall?.copyWith(fontSize: 14),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    for (int i = 0; i < 5; i++)
                      (i < companyReviews.rating)
                          ? const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            )
                          : Icon(
                              Icons.star_border_outlined,
                              color: colorScheme.primary,
                              size: 15,
                            ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: Text(
                  companyReviews.title,
                  style: textTheme.bodyLarge?.copyWith(fontSize: 16),
                ),
              ),
              const SizedBox(height: 10),
              Flexible(
                fit: FlexFit.loose,
                child: Text(
                  companyReviews.description,
                  style: textTheme.bodySmall?.copyWith(fontSize: 14),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Pros:',
                style: textTheme.bodyLarge?.copyWith(fontSize: 14.5),
              ),
              const SizedBox(height: 5),
              for (int i = 0; i < companyReviews.pros.length; i++)
                Text(
                  '\u2022 ${companyReviews.pros[i]}',
                  style: textTheme.bodySmall?.copyWith(fontSize: 14),
                ),
              const SizedBox(height: 5),
              Text(
                'Cons:',
                style: textTheme.bodyLarge?.copyWith(fontSize: 14.5),
              ),
              const SizedBox(height: 5),
              for (int i = 0; i < companyReviews.cons.length; i++)
                Text(
                  '\u2022 ${companyReviews.cons[i]}',
                  style: textTheme.bodySmall?.copyWith(fontSize: 14),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
