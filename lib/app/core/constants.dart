

class Constants {
  static const _baseEndpoint = "https://api.themoviedb.org/3/movie";
  static const String _posterEnpoint = "https://image.tmdb.org/t/p/original";
  static const String _nowPlayingEndpoint = "$_baseEndpoint/now_playing";
  static const String _key = "chave";

  static Uri returnNowPlayingUri({required int page}){
    return Uri.parse("$_nowPlayingEndpoint?api_key=$_key&page=$page");
  }

  static Uri returnMovieDetailsUri({required int movieId}){
    return Uri.parse("$_baseEndpoint/$movieId?api_key=$_key");
  }

  static String returnPosterUrl({required String posterPath}){
    return "$_posterEnpoint$posterPath";
  }
}