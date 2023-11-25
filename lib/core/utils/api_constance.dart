class ApiConstance {

  static const String NOW_PLAYING_MOVIE_URL = 'https://api.themoviedb.org/3/movie/now_playing?api_key=$API_KEY';
  static const String TOP_RATED_MOVIE_URL = 'https://api.themoviedb.org/3/movie/top_rated?api_key=$API_KEY';
  static const String POPULAR_MOVIE_URL = 'https://api.themoviedb.org/3/movie/popular?api_key=$API_KEY';
  static const String API_KEY = '6a4ecbb508600a6c3fcaceaccfeb00ee';
  static const String BASE_IMAGE_URL = 'https://image.tmdb.org/t/p/w500';

  static String imageUrl(String path)=>'$BASE_IMAGE_URL$path';
}