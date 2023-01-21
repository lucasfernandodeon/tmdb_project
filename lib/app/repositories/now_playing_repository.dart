import '../models/now_playing_response_model.dart';

abstract class NowPlayingRepository {
  Future<NowPlayingResponseModel> getNowPlaying({required int page});
}
