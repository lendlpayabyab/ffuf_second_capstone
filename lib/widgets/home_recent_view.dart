import 'package:flutter/material.dart';

import '../models/company_info.dart';
import '../widgets/text_builder.dart';
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
    return Padding(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textHeader1(
                text: 'Recent Postings',
                color: Color(0xFF1A1D1E),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 10,
                    width: 50,
                  ),
                  TextButton(
                    // todo : enable functionality
                    onPressed: () {},
                    child: subText(text: 'Show All'),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: widget.height-483,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return RecentJobCardBuilder(jobListing: jobListings[index]);
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
