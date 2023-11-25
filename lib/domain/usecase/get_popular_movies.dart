import 'dart:js_interop_unsafe';

import 'package:movie_app/data/models/movie_model.dart';

import '../repository/movie_domain_repository.dart';

class GetPopularMoviesUseCase {
  late MovieDominRepository movieDominRepository;

  GetPopularMoviesUseCase(this.movieDominRepository);

  Future<List<MovieModel>> execute() {
    return movieDominRepository.getPopularMovies();
  }
}
