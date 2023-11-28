import 'package:movie_app/domain/repository/movie_domain_repository.dart';

import '../data_source/remote_data_source.dart';
import '../models/movie_model.dart';

class MovieDataRepository extends MovieDominRepository{
  late BaseRemoteDataSource baseRemoteDataSource;

  MovieDataRepository(this.baseRemoteDataSource);

  Future<List<MovieModel>> getNowPlayingMovies() {
    return baseRemoteDataSource.getNowPlayingMovies();
  }

  Future<List<MovieModel>> getPopularMovies() {
    return baseRemoteDataSource.getPopularMovies();
  }

  Future<List<MovieModel>> getTopRatedMovies() {
    return baseRemoteDataSource.getTopRatedMovies();
  }
}