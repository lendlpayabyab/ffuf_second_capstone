import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import 'package:ffuf_second_capstone/change_notifiers/settings.dart';
import 'package:ffuf_second_capstone/models/company_info.dart';
import 'package:ffuf_second_capstone/widgets/build_job_type.dart';
import 'package:ffuf_second_capstone/widgets/job_details_description_view.dart';
import 'package:ffuf_second_capstone/widgets/job_details_company_view.dart';
import 'package:ffuf_second_capstone/widgets/job_details_reviews_view.dart';

class JobDetailsScreen extends StatefulWidget {
  final List<Company> companyList;
  final JobListing jobListing;

  const JobDetailsScreen({
    Key? key,
    required this.jobListing,
    required this.companyList,
  }) : super(key: key);

  @override
  State<JobDetailsScreen> createState() => _JobDetailsScreenState();
}

class _JobDetailsScreenState extends State<JobDetailsScreen> {
  late final int companyIndex;

  int _selectedIndex = 0;

  PageController? _pageController;

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    companyIndex = widget.companyList
        .indexWhere((element) => element.name == widget.jobListing.companyName);
    _pageController = PageController();
    super.initState();
  }

  void onItemTap(int index) {
    _pageController!.animateToPage(index,
        duration: const Duration(milliseconds: 250), curve: Curves.decelerate);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(widget.companyList[companyIndex].companyLogoUrl),
          )),
        ),
        SizedBox(height: 10),
        Text(
          widget.jobListing.position,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(height: 10),
        CompanyLocationWidget(widget: widget),
        SizedBox(height: 20),
        JobTypeSalaryWidget(widget: widget),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            JobDetailsTabButton(
              selectedIndex: _selectedIndex,
              thisButtonIndex: 0,
              buttonText: 'Description',
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                  onItemTap(_selectedIndex);
                });
              },
            ),
            JobDetailsTabButton(
              selectedIndex: _selectedIndex,
              thisButtonIndex: 1,
              buttonText: 'Company',
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                  onItemTap(_selectedIndex);
                });
              },
            ),
            JobDetailsTabButton(
              selectedIndex: _selectedIndex,
              thisButtonIndex: 2,
              buttonText: 'Reviews',
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                  onItemTap(_selectedIndex);
                });
              },
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            children: [
              JobDetailsDescriptionView(
                jobListing: widget.jobListing,
              ),
              JobDetailsCompanyView(company: widget.companyList[companyIndex]),
              JobDetailsReviewsView(
                  companyReviews:
                      widget.companyList[companyIndex].companyReviews),
            ],
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(width: 20),
            Expanded(
              child: Container(
                height: 54,
                decoration: BoxDecoration(
                  color: Color(0xFF4CA6A8),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextButton(
                  onPressed: () {
                    // todo : apply now page
                  },
                  child: Text(
                    'Apply Now',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                color: Color(0xFF4CA6A8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextButton(
                onPressed: () {
                  // todo : message company
                },
                child: SvgPicture.asset(
                  'assets/custom_svg_icons/message.svg',
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 20),
          ],
        ),
      ],
    );
  }
}

class JobDetailsTabButton extends StatelessWidget {
  const JobDetailsTabButton({
    Key? key,
    required int selectedIndex,
    required this.thisButtonIndex,
    required this.onTap,
    required this.buttonText,
  })  : _selectedIndex = selectedIndex,
        super(key: key);

  final String buttonText;
  final int _selectedIndex;
  final int thisButtonIndex;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 123,
      height: 50,
      decoration: BoxDecoration(
        color: _selectedIndex == thisButtonIndex
            ? Color(0xFF4CA6A8)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextButton(
        onPressed: () {
          onTap();
        },
        child: Text(
          buttonText,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontSize: 14,
              color: _selectedIndex == thisButtonIndex ? Colors.white : null),
        ),
      ),
    );
  }
}

class CompanyLocationWidget extends StatelessWidget {
  const CompanyLocationWidget({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final JobDetailsScreen widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '${widget.jobListing.companyName} —',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 14),
        ),
        Icon(
          Icons.location_on_outlined,
          color: Provider.of<Settings>(context).darkMode
              ? Colors.white
              : Color(0xFF6A6A6A),
        ),
        Text(
          widget.jobListing.location,
          style:
              Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 14),
        ),
      ],
    );
  }
}

class JobTypeSalaryWidget extends StatelessWidget {
  const JobTypeSalaryWidget({Key? key, required this.widget}) : super(key: key);

  final JobDetailsScreen widget;

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.access_time_outlined,
          color: Provider.of<Settings>(context).darkMode
              ? Colors.white
              : Color(0xFF6A6A6A),
        ),
        SizedBox(width: 10),
        BuildJobType(
          jobListing: widget.jobListing,
          fontSize: 18,
        ),
        SizedBox(width: 80),
        Text(
          '${NumberFormat('\$#,##0.00').format(widget.jobListing.salary)}/m',
          style:
             textTheme.headlineSmall?.copyWith(fontSize: 18),
        ),
      ],
    );
  }
}
