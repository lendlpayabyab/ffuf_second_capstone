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
            padding: EdgeInsets.symmetric(horizontal: 20,),
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
                  child: Text('Show All',
                    style: Theme.of(context).textTheme.labelSmall,),
                ),
              ],
            ),
          ),
          SizedBox(
            height: widget.height-455,
            child: ListView.separated(
              padding: EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
                bottom: 40,
              ),
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
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
                  child: RecentJobCardBuilder(jobListing: jobListings[index]),
                );
              },
              separatorBuilder: (context, index){
                return SizedBox(height: 20,);
              },
              itemCount: jobListings.length,
            ),
          ),
        ],
      ),
    );
  }
}
