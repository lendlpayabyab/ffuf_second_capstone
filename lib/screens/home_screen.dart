import 'package:flutter/material.dart';

import '../api/pseudo_service.dart';
import '../models/company_info.dart';
import '../responsive_safe_area.dart';
import '../widgets/home_popular_view.dart';
import '../widgets/home_top_bar.dart';
import '../widgets/home_search_bar.dart';
import '../widgets/home_recent_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final pseudoService = PseudoService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: pseudoService.getCompany(),
      builder: (BuildContext context, AsyncSnapshot<List<Company>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final companyList = snapshot.data ?? [];
          return Scaffold(
            extendBody: true,
            body: ResponsiveSafeArea(builder: (context, height, width) {
              return Container(
                //height: height,
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      HomeTopBar(width: width),
                      const SizedBox(
                        height: 15,
                      ),
                      HomeSearchBar(width: width),
                      const SizedBox(
                        height: 15,
                      ),
                      HomePopularView(
                        width: width,
                        companyList: companyList,
                      ),
                      Transform(
                        transform: Matrix4.translationValues(0, -60, 0),
                        child: HomeRecentView(
                          height: height,
                          width: width,
                          companyList: companyList,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          );
        } else {
          return ResponsiveSafeArea(
            builder: (context, height, width) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          );
        }
      },
    );
  }
}
