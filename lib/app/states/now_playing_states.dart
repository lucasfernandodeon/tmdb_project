import 'package:tmdb_project/app/models/now_playing_response_model.dart';

abstract class NowPlayingState {}

class NowPlayingLoading extends NowPlayingState {}

class NowPlayingSuccess extends NowPlayingState {
  final NowPlayingResponseModel nowPlayingResponseModel;

  NowPlayingSuccess({required this.nowPlayingResponseModel});
}

class NowPlayingError extends NowPlayingState {
  final String error;

  NowPlayingError({required this.error});
}
