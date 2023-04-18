class Analysis{
  String term;
  int analysisClass;

  Analysis({required this.term,required this.analysisClass});

  @override
  String toString() {
    return 'Analysis{term: $term, analysisClass: $analysisClass}';
  }
}