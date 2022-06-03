part of 'package:ffuf_second_capstone/models/company_info.dart';

class CompanyReviews {
  final String position;
  final int yearsOfExp;
  final String title;
  final String description;
  final int rating;
  final List<String> pros;
  final List<String> cons;

  CompanyReviews({
    required this.position,
    required this.yearsOfExp,
    required this.title,
    required this.description,
    required this.rating,
    required this.pros,
    required this.cons,
  });

  factory CompanyReviews.fromJson(Map<String, dynamic> json) {

    final pros = <String>[];
    final cons = <String>[];

    if(json['pros'] != null){
      json['pros'].forEach((v){
        pros.add(v);
      });
    }
    if(json['cons'] != null){
      json['cons'].forEach((v){
        cons.add(v);
      });
    }

    return CompanyReviews(
      position: json['position'] ?? '',
      yearsOfExp: json['yearsOfExp'] ?? 0,
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      rating: json['rating'] ?? 0,
      pros: pros,
      cons: cons,
    );
  }
}
