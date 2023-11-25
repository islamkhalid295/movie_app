import 'package:movie_app/core/utils/api_constance.dart';

import '../../domain/entites.dart';

class MovieModel extends Movie {
  MovieModel(super.id, super.poster, super.background, super.overView,
      super.releaseDate, super.title, super.voteAverage, super.voteCount);

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
      json['id'],
      ApiConstance.imageUrl(json['poster_path']),
      ApiConstance.imageUrl(json['backdrop_path']),
      json['overview'],
      json['release_date'],
      json['title'],
      json['vote_average'],
      json['vote_count']
  );
}
