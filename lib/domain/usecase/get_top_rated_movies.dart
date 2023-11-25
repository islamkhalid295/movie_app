import 'package:movie_app/data/models/movie_model.dart';

import '../repository/movie_domain_repository.dart';

class GetTopRatedMoviesUseCase {
  late MovieDominRepository movieDominRepository;

  GetTopRatedMoviesUseCase(this.movieDominRepository);

  Future<List<MovieModel>> execute() {
    return movieDominRepository.getTopRatedMovies();
  }
}
