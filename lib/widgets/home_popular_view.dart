import 'package:flutter/material.dart';
import 'package:ffuf_second_capstone/models/company_info.dart';
import 'package:ffuf_second_capstone/screens/job_details_screen.dart';
import 'package:ffuf_second_capstone/widgets/popular_job_card_builder.dart';

class HomePopularView extends StatefulWidget {
  final double width;
  final List<Company> companyList;

  const HomePopularView({
    Key? key,
    required this.width,
    required this.companyList,
  }) : super(key: key);

  @override
  State<HomePopularView> createState() => _HomePopularViewState();
}

class _HomePopularViewState extends State<HomePopularView> {
  final jobListings = <JobListing>[];

  @override
  void initState() {
    for (var element in widget.companyList) {
      for (var subElement in element.jobListing) {
        if (subElement.applications > 50) {
          jobListings.add(subElement);
        }
      }
    }
    jobListings.sort((a, b) => a.applications.compareTo(b.applications));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: 293,
      width: widget.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Jobs',
                  style: textTheme.titleLarge,
                ),
                TextButton(
                  // todo : enable functionality
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Text(
                    'Show All',
                    style: textTheme.labelSmall,
                  ),
                ),
              ],
            ),
          ),
          Container(
            transform: Matrix4.translationValues(0, -20, 0),
            height: 235,
            child: ListView.separated(
              padding: const EdgeInsets.only(
                top: 25,
                bottom: 50,
                left: 20,
                right: 20,
              ),
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return FractionallySizedBox(
                          heightFactor: 0.8,
                          child: Column(
                            children: [
                              const SizedBox(height: 10),
                              Container(
                                height: 4,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE1E1E1),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                              JobDetailsScreen(
                                jobListing: jobListings[index],
                                companyList: widget.companyList,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: PopularJobCardBuilder(
                    jobListing: jobListings[index],
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 20),
              itemCount: jobListings.length,
            ),
          ),
        ],
      ),
    );
  }
}
