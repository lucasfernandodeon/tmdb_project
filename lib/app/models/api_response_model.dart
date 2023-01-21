import 'movie_model.dart';

class ApiResponseModel {
  final int page;
  final int totalPages;
  final List<MovieModel> moviesList;

  ApiResponseModel._(
      {required this.page, required this.totalPages, required this.moviesList});

  factory ApiResponseModel.fromJson(Map<String, dynamic> json) {
    List<MovieModel> auxMoviesList = [];
    for (var movie in json['results']) {
      auxMoviesList.add(MovieModel.fromJson(movie));
    }
    return ApiResponseModel._(
        page: json['page'],
        totalPages: json['total_pages'],
        moviesList: auxMoviesList);
  }
}
