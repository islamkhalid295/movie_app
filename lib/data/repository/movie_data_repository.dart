import 'package:movie_app/domain/repository/movie_domain_repository.dart';

import '../data_source/remote_data_source.dart';
import '../models/movie_model.dart';

class MovieDataRepository extends MovieDominRepository{
  late RemoteDataSource remoteDataSource;

  MovieDataRepository(this.remoteDataSource);

  Future<List<MovieModel>> getNowPlayingMovies() {
    return remoteDataSource.getNowPlayingMovies();
  }

  Future<List<MovieModel>> getPopularMovies() {
    return remoteDataSource.getPopularMovies();
  }

  Future<List<MovieModel>> getTopRatedMovies() {
    return remoteDataSource.getTopRatedMovies();
  }
}