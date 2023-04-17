import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:menucritic/utils/testreview.dart';

class GoogleApiResponse{
  late String? googleID;
 // final String _key = 'YXV0aDB8NjM5YjRjNTU1MDBiZTZlMGViNTgyNDc0fGJhZTIyZTFjZjU';
  final String _key= 'Z29vZ2xlLW9hdXRoMnwxMDg2MzQ3MjA2Njc2MDc3ODk4MjR8NmQzMTBjOTg1Mg';
  Map data={};
  late String resLoc;
  DateTime? time;
  GoogleApiResponse({ this.googleID,});
  Future<Map> getReviewData( ) async {
    int success = 0;
    try {
      Map<String, String> headers = {
        'X-API-KEY': _key,
      };
      final http.Response response;
      final http.Response response2;
      time = DateTime.now();
      response = await http.get(Uri.https('api.app.outscraper.com', 'maps/reviews-v3', {'query' : googleID, 'reviewsLimit' : '3', 'async': 'false'},), headers: headers);
      debugPrint('historical');
      data = jsonDecode(response.body);
      print(response.statusCode);
      print('success $success');
    }
    catch (e, s) {
      debugPrint('$e \n $s');
      success = 0;
    }
    return data;
  }
}