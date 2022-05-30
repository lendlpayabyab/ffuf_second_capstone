import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/company_info.dart';

class PseudoService {

  Future<List<Company>> getCompany() async {
    //await Future.delayed(const Duration(milliseconds: 1000));
    final dataString =
        await _loadAsset('assets/sample_data/sample_company_info.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    if (json['company'] != null) {
      final company = <Company>[];
      json['company'].forEach((v) {
        company.add(Company.fromJson(v));
      });
      return company;
    } else {
      return List.empty(growable: true);
    }
  }

  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
