import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/text_builder.dart';
import '../models/company_info.dart';

class PopularJobCardBuilder extends StatelessWidget {
  final JobListing jobListing;

  const PopularJobCardBuilder({
    Key? key,
    required this.jobListing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 160,
      width: 260,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: ClipRect(
                      child: Image(
                        image: AssetImage(jobListing.logoUrl),
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  subText(text: jobListing.companyName, color: Color(0xFF6A6A6A)),
                ],
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(
                  CupertinoIcons.heart,
                  size: 20,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          textHeader2(text: jobListing.position),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextBuilder(text: '${NumberFormat('\$#,##0.00').format(jobListing.salary)}/m',),
              SizedBox(width: 5,),
              subText(text: jobListing.location, color: Theme.of(context).colorScheme.primary),
            ],
          )
        ],
      ),
    );
  }
}
