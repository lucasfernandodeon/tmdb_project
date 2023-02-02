import 'package:flutter/material.dart';

import '../repositories/now_playing_api_repository.dart';
import '../states/now_playing_states.dart';

class NowPlayingStore extends ValueNotifier<NowPlayingState>{
  final NowPlayingApiRepository nowPlayingApiRepository;
  NowPlayingStore({required this.nowPlayingApiRepository}) : super(NowPlayingLoading()) {
    getMovies();
  }

  getMovies()async{
    try{
      var result =  await nowPlayingApiRepository.getNowPlaying(page: 1);
      value = NowPlayingSuccess(nowPlayingResponseModel: result);
    }catch(error){
      value = NowPlayingError(error: error.toString());
    }
  }

}