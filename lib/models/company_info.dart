part './company_reviews.dart';
part './job_listing.dart';


class Company {
  String name;
  final String companyLogoUrl;
  final String companyDescription;
  List<CompanyReviews> companyReviews;
  List<JobListing> jobListing;

  Company({
    required this.name,
    required this.companyLogoUrl,
    required this.companyDescription,
    required this.companyReviews,
    required this.jobListing,
  });

  factory Company.fromJson(Map<String, dynamic> json) {
    final companyReviews = <CompanyReviews>[];
    final jobListing = <JobListing>[];

    if (json['companyReviews'] != null) {
      json['companyReviews'].forEach((v) {
        companyReviews.add(CompanyReviews.fromJson(v));
      });
    }

    if (json['jobListing'] != null) {
      json['jobListing'].forEach((v) {
        jobListing.add(JobListing.fromJson(v));
      });
    }

    return Company(
      name: json['name'] ?? '',
      companyLogoUrl: json['companyLogoUrl'] ?? '',
      companyDescription: json['companyDescription'] ?? '',
      companyReviews: companyReviews,
      jobListing: jobListing,
    );
  }
}
