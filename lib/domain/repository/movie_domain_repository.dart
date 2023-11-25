
import '../../data/models/movie_model.dart';

abstract class MovieDominRepository {

  Future<List<MovieModel>> getNowPlayingMovies();

  Future<List<MovieModel>> getPopularMovies();

  Future<List<MovieModel>> getTopRatedMovies();
}