import 'Analysis.dart';

class ReviewAnalysis{
  String reviewText;
  List<Analysis> analysis;

  ReviewAnalysis({required this.reviewText,required this.analysis});

  @override
  String toString() {
    return 'ReviewAnalysis{reviewText: $reviewText, analysis: $analysis}';
  }
}