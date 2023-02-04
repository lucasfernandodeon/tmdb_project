import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tmdb_project/app/states/now_playing_states.dart';
import 'package:tmdb_project/app/stores/now_playing_store.dart';
import 'package:tmdb_project/app/views/now_playing/now_playing_item_view.dart';

import '../../widgets/information_widget.dart';
import '../../widgets/loading_widget.dart';

class NowPlayingView extends StatefulWidget {
  const NowPlayingView({Key? key}) : super(key: key);

  @override
  State<NowPlayingView> createState() => _NowPlayingViewState();
}

class _NowPlayingViewState extends State<NowPlayingView> {
  final NowPlayingStore _nowPlayingStore = GetIt.instance.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Filmes"),
      ),
      body: ValueListenableBuilder<NowPlayingState>(
        valueListenable: _nowPlayingStore,
        builder: (_, state, __) {
          if (state is NowPlayingLoading) {
            return const LoadingWidget();
          } else if (state is NowPlayingError) {
            return InformationWidget(message: state.error);
          } else if (state is NowPlayingSuccess) {
            if (state.nowPlayingResponseModel.moviesList.isEmpty) {
              return const InformationWidget(
                  message: "Não foram encontrados filmes.");
            }

            return ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: state.nowPlayingResponseModel.moviesList.length,
              itemBuilder: (context, index) {
                return  NowPlayingItem(movieModel: state.nowPlayingResponseModel.moviesList[index]);

              },
            );

          } else {
            return Container();
          }
        },
      ),
    );
  }
}
