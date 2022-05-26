import 'package:flutter/material.dart';
import '../models/company_info.dart';
import '../widgets/text_builder.dart';
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
  void initState(){
    for (var element in widget.companyList) {
      for (var subElement in element.jobListing){
        if (subElement.applications > 50){
          jobListings.add(subElement);
        }
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: widget.width,
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textHeader1(
                text: 'Popular Jobs',
                color: Color(0xFF1A1D1E),
              ),
              Flexible(
                child: Column(
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
              ),
            ],
          ),
          Container(
            height: 160,
            color: Colors.transparent,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return PopularJobCardBuilder(jobListing: jobListings[index],);
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
