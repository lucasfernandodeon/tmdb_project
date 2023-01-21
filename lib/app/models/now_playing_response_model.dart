import 'movie_model.dart';

class NowPlayingResponseModel {
  final int page;
  final int totalPages;
  final List<MovieModel> moviesList;

  NowPlayingResponseModel._(
      {required this.page, required this.totalPages, required this.moviesList});

  factory NowPlayingResponseModel.fromJson(Map<String, dynamic> json) {
    List<MovieModel> auxMoviesList = [];
    for (var movie in json['results']) {
      auxMoviesList.add(MovieModel.fromJson(movie));
    }
    return NowPlayingResponseModel._(
        page: json['page'],
        totalPages: json['total_pages'],
        moviesList: auxMoviesList);
  }
}
