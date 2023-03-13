import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GoogleApiResponse{
  late String? googleID;
  final String _key = 'Z29vZ2xlLW9hdXRoMnwxMDg2MzQ3MjA2Njc2MDc3ODk4MjR8NmQzMTBjOTg1Mg';
  Map ?data;
  late String resLoc;
  DateTime? time;
  GoogleApiResponse({ this.googleID,});
  Future<Map?> getData( ) async {
    int success = 0;
    try {
      Map<String, String> headers = {
        'X-API-KEY': _key,
      };
      final http.Response response;
      time = DateTime.now();
      response = await http.get(Uri.https('api.app.outscraper.com', 'maps/reviews-v3', {'query' : googleID, 'reviewsLimit' : '10'},), headers: headers);
      debugPrint('historical');
      data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);
      print('success $success');
    }
    catch (e, s) {
      debugPrint('$e \n $s');
      success = 0;
    }
    return data;
  }
}