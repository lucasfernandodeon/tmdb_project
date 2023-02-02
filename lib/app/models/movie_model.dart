class MovieModel {
  final String? posterPath;
  final String title;
  final String releaseDate;
  final double voteAverage;

  MovieModel._({
    required this.posterPath,
    required this.title,
    required this.releaseDate,
    required this.voteAverage,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel._(
      posterPath: json['poster_path'],
      title: json['title'],
      releaseDate: json['release_date'],
      voteAverage: (json['vote_average']).toDouble(),
    );
  }
}
