part of './company_info.dart';

enum JobType {
  fullTime,
  partTime,
  contract,
  freelance,
  remote,
}

class JobListing {
  final String companyName;
  final String logoUrl;
  final String position;
  final String industry;
  final String category;
  final String subCategory;
  final String location;
  final double salary;
  final int applications;
  final JobType jobType;
  final DateTime datePosted;
  final List<String> requirements;
  final String jobDescription;
  final List<String> responsibilities;
  final String schedule;
  final List<String> perks;

  JobListing({
    required this.companyName,
    required this.logoUrl,
    required this.position,
    required this.industry,
    required this.category,
    required this.subCategory,
    required this.location,
    required this.salary,
    required this.applications,
    required this.jobType,
    required this.datePosted,
    required this.requirements,
    required this.jobDescription,
    required this.responsibilities,
    required this.schedule,
    required this.perks,
  });

  factory JobListing.fromJson(Map<String, dynamic> json) {
    DateTime datePosted = DateTime.now();
    JobType jobType = JobType.fullTime;
    final requirements = <String>[];
    final responsibilities = <String>[];
    final perks = <String>[];

    if(json['requirements'] != null){
      json['requirements'].forEach((v){
        requirements.add(v);
      });
    }
    if(json['responsibilities'] != null){
      json['responsibilities'].forEach((v){
        responsibilities.add(v);
      });
    }
    if(json['perks'] != null){
      json['perks'].forEach((v){
        perks.add(v);
      });
    }

    if (json['datePosted'] != null) {
      datePosted = DateTime.parse(json['datePosted']);
    }

    if (json['jobType'] != null) {
      switch (json['jobType']) {
        case 'full time' :
          jobType = JobType.fullTime;
          break;
        case 'part time' :
          jobType = JobType.partTime;
          break;
        case 'contract' :
          jobType = JobType.contract;
          break;
        case 'freelance' :
          jobType = JobType.freelance;
          break;
        case 'remote' :
          jobType = JobType.remote;
          break;
      }
    }

    return JobListing(
      companyName: json['companyName'] ?? '',
      logoUrl: json['logoUrl'],
      position: json['position'] ?? '',
      industry: json['industry'] ?? '',
      category: json['category'] ?? '',
      subCategory: json['subCategory'] ?? '',
      location: json['location'] ?? '',
      salary: json['salary'] ?? 0.00,
      applications: json['applications'] ?? 0,
      jobType: jobType,
      datePosted: datePosted,
      requirements: requirements,
      jobDescription: json['jobDescription'] ?? '',
      responsibilities: responsibilities,
      schedule: json['schedule'] ?? '',
      perks: perks,
    );
  }
}
