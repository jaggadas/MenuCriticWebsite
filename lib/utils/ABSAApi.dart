import 'dart:convert';

import 'package:http/http.dart' as http;
class AbsaAPIResponse{
  String apiUrl = 'https://ecstatic-shadow-75024.pktriot.net';
  getReviewAnalysis(String reviewText) async {
    try{
      final url = Uri.parse('$apiUrl/predict?text=food%20is%20good%20but%20service%20is%20bad');

      final response = await http.post(
        url,
        headers: {'accept': 'application/json'},
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        print(jsonResponse);
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    }catch(e){
      print(e);
    }
  }
}