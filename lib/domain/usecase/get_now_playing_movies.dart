import 'package:movie_app/data/models/movie_model.dart';

import '../repository/movie_domain_repository.dart';

class GetNowPlayingMoviesUseCase {
  final MovieDominRepository movieDominRepository;

  GetNowPlayingMoviesUseCase(this.movieDominRepository);

  Future<List<MovieModel>> execute() {
    return movieDominRepository.getNowPlayingMovies();
  }
}
