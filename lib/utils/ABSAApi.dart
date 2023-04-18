import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:menucritic/models/Analysis.dart';
import 'package:menucritic/models/ReviewAnalysis.dart';

class AbsaAPIResponse {
  String apiUrl = 'https://ecstatic-shadow-75024.pktriot.net';

  getReviewAnalysis(String reviewText) async {
    try {
      final url = Uri.parse(
          'https://ecstatic-shadow-75024.pktriot.net/predict?text=$reviewText');

      final response = await http.post(
        url,
        headers: {'accept': 'application/json'},
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        print(jsonResponse);
        var list = jsonResponse['output'];
        List<Analysis> analysisList = [];
        for(var element in list){
          Analysis analysis = Analysis(term: element['term'], analysisClass: element['class']);
          analysisList.add(analysis);
        }
        ReviewAnalysis  reviewAnalysis=ReviewAnalysis(reviewText: reviewText, analysis: analysisList);
        // print(reviewAnalysis);
        return reviewAnalysis;

      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print(e);
    }
  }
}
