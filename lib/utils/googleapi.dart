import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:menucritic/utils/testreview.dart';

import '../models/Review.dart';

class GoogleApiResponse {
  late String? googleID;

  // final String _key = 'YXV0aDB8NjM5YjRjNTU1MDBiZTZlMGViNTgyNDc0fGJhZTIyZTFjZjU';
  final String _key =
      'Z29vZ2xlLW9hdXRoMnwxMDg2MzQ3MjA2Njc2MDc3ODk4MjR8NmQzMTBjOTg1Mg';
  Map data = {};
  late String resLoc;
  DateTime? time;

  GoogleApiResponse({
    this.googleID,
  });

  Future<Object> getReviewData() async {
    int success = 0;
    try {
      List<Review> reviewObjects = [];
      Map<String, String> headers = {
        'X-API-KEY': _key,
      };
      final http.Response response;
      final http.Response response2;
      time = DateTime.now();
      response = await http.get(
          Uri.https(
            'api.app.outscraper.com',
            'maps/reviews-v3',
            {'query': googleID, 'reviewsLimit': '50', 'async': 'false'},
          ),
          headers: headers);
      debugPrint('historical');
      print(response.body);
      data = jsonDecode(response.body);
      debugPrint(response.statusCode as String?);
      debugPrint('success $success');
      //TODO:test
      var reviews = data!["data"][0]["reviews_data"];
      for (var review in reviews) {
        if (review["review_text"] != null) {
          Review reviewObject = Review(
              reviewText: review["review_text"] ?? "",
              rating: review["review_rating"] ?? 1,
              date: review["review_datetime_utc"] ?? "",
              id: 1);
          reviewObjects.add(reviewObject);
        }
      }
      debugPrint(reviewObjects.toString());
      return reviewObjects;
    } catch (e, s) {
      debugPrint('$e \n $s');
      success = 0;
    }
    return data;
  }
}
