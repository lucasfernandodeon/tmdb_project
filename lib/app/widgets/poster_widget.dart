import 'package:flutter/material.dart';
import 'package:tmdb_project/app/widgets/loading_widget.dart';

import '../core/constants.dart';

class PosterWidget extends StatelessWidget {
  final String? posterPath;

  const PosterWidget({Key? key, this.posterPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (posterPath == null) {
      return const Icon(Icons.image_not_supported_sharp);
    }
    return Image.network(Constants.returnPosterUrl(posterPath: posterPath!),
        fit: BoxFit.contain, loadingBuilder: (BuildContext context,
            Widget child, ImageChunkEvent? loadingProgress) {
      if (loadingProgress == null) return child;
      return const LoadingWidget();
    });
  }
}
