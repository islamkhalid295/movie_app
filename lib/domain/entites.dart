import 'dart:ffi';

class Movie{
  late int id;
  late String poster;
  late String background;
  late String overView;
  late String releaseDate;
  late String title;
  late double voteAverage;
  late int voteCount;

  Movie(this.id, this.poster, this.background, this.overView, this.releaseDate,
      this.title, this.voteAverage, this.voteCount);
}