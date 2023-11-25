import 'package:dio/dio.dart';
import 'package:movie_app/core/utils/api_constance.dart';

import '../models/movie_model.dart';

abstract class BaseRemoteDataSource {

  Future<List<MovieModel>> getNowPlayingMovies();

  Future<List<MovieModel>> getPopularMovies();

  Future<List<MovieModel>> getTopRatedMovies();
}

class RemoteDataSource extends BaseRemoteDataSource {
  Dio dio = Dio();

  Future<List<MovieModel>> getNowPlayingMovies() async {
    var response = await dio.get(ApiConstance.NOW_PLAYING_MOVIE_URL);
    List<dynamic> results = response.data['results'];
    List<MovieModel> list =
        results.map((json) => MovieModel.fromJson(json)).toList();
    return list;
  }

  Future<List<MovieModel>> getPopularMovies() async {
    var response = await dio.get(ApiConstance.POPULAR_MOVIE_URL);
    List<dynamic> results = response.data['results'];
    List<MovieModel> list =
        results.map((json) => MovieModel.fromJson(json)).toList();
    return list;
  }

  Future<List<MovieModel>> getTopRatedMovies() async {
    var response = await dio.get(ApiConstance.TOP_RATED_MOVIE_URL);
    List<dynamic> results = response.data['results'];
    List<MovieModel> list =
        results.map((json) => MovieModel.fromJson(json)).toList();
    return list;
  }
}
