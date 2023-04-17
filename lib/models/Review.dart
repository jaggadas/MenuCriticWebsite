class Review{
  String reviewText;
  int rating;
  String date;
  int id;
  Review({required this.reviewText, required this.rating, required this.date, required this.id});

  @override
  String toString() {
    return 'Review{reviewText: $reviewText, rating: $rating, date: $date, id: $id}';
  }
}