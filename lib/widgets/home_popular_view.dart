import 'package:flutter/material.dart';
import '../models/company_info.dart';
import '../widgets/popular_job_card_builder.dart';

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
    return SizedBox(
      height: 293,
      width: widget.width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Jobs',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TextButton(
                  // todo : enable functionality
                  onPressed: () {},
                  child: Text(
                    'Show All',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
              ],
            ),
          ),
          Container(
            transform: Matrix4.translationValues(0, -20, 0),
            height: 235,
            child: ListView.separated(
              padding: EdgeInsets.only(
                top: 25,
                bottom: 50,
                left: 20,
                right: 20,
              ),
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
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
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 4,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE1E1E1),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                              // todo : job listing view as child
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
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 20,
                );
              },
              itemCount: jobListings.length,
            ),
          ),
        ],
      ),
    );
  }
}
