import 'package:flutter/material.dart';

import '../models/company_info.dart';
import '../widgets/recent_job_card_builder.dart';

class HomeRecentView extends StatefulWidget {
  final double width;
  final double height;
  final List<Company> companyList;

  const HomeRecentView({
    Key? key,
    required this.width,
    required this.height,
    required this.companyList,
  }) : super(key: key);

  @override
  State<HomeRecentView> createState() => _HomeRecentViewState();
}

class _HomeRecentViewState extends State<HomeRecentView> {
  final jobListings = <JobListing>[];

  @override
  void initState(){
    for (var element in widget.companyList) {
      for (var subElement in element.jobListing){
          jobListings.add(subElement);
      }
    }
    jobListings.sort((a,b) => a.datePosted.compareTo(b.datePosted));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Postings',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TextButton(
                  // todo : enable functionality
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Text('Show All',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
              ],
            ),
          ),
          Container(
            transform: Matrix4.translationValues(0, -15, 0),
            height: widget.height - 500 < 1 ? 200 : widget.height - 500,
            child: ListView.separated(
              padding: const EdgeInsets.only(
                top: 25,
                left: 20,
                right: 20,
                bottom: 30,
              ),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
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
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 4,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE1E1E1),
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
                  child: RecentJobCardBuilder(jobListing: jobListings[index]),
                );
              },
              separatorBuilder: (context, index){
                return const SizedBox(height: 20,);
              },
              itemCount: jobListings.length,
            ),
          ),
        ],
      ),
    );
  }
}
