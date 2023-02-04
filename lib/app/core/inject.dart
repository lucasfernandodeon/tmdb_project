import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:tmdb_project/app/repositories/now_playing_api_repository.dart';
import 'package:tmdb_project/app/stores/now_playing_store.dart';

import '../repositories/now_playing_repository.dart';

class Inject {
  static init() {
    final getIt = GetIt.instance;

    getIt.registerLazySingleton<http.Client>(() => http.Client());

    getIt.registerLazySingleton<NowPlayingRepository>(
            () =>NowPlayingApiRepository(httpClient: getIt.get()));

    getIt.registerLazySingleton<NowPlayingStore>(
        () => NowPlayingStore(nowPlayingRepository: getIt.get()));
  }
}
