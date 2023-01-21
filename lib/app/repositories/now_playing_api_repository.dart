import 'package:tmdb_project/app/models/now_playing_response_model.dart';
import 'package:tmdb_project/app/repositories/now_playing_repository.dart';

class NowPlayingApiRepository implements NowPlayingRepository {
  @override
  Future<NowPlayingResponseModel> getNowPlaying({required int page}) {
    // TODO: implement getNowPlaying
    throw UnimplementedError();
  }
}
