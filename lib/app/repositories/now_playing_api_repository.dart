import 'dart:convert';

import 'package:tmdb_project/app/models/now_playing_response_model.dart';
import 'package:tmdb_project/app/repositories/now_playing_repository.dart';
import 'package:http/http.dart' as http;

import '../core/constants.dart';

class NowPlayingApiRepository implements NowPlayingRepository {
  final http.Client httpClient;

  NowPlayingApiRepository({required this.httpClient});

  @override
  Future<NowPlayingResponseModel> getNowPlaying({required int page}) async {
    var response =
        await httpClient.get(Constants.returnNowPlayingUri(page: page));
    return NowPlayingResponseModel.fromJson(jsonDecode(response.body));
  }
}
