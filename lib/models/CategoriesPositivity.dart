class CategoriesPositivity{
  String term;
  int positiveCount;
  int negativeCount;

  CategoriesPositivity(this.term, this.positiveCount, this.negativeCount);

  @override
  String toString() {
    return 'CategoriesPositivity{term: $term, positiveCount: $positiveCount, negativeCount: $negativeCount}';
  }
}