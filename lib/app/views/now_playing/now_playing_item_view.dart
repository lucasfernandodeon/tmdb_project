import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tmdb_project/app/models/movie_model.dart';
import 'package:tmdb_project/app/widgets/poster_widget.dart';

class NowPlayingItem extends StatelessWidget {
  final MovieModel movieModel;

  const NowPlayingItem({Key? key, required this.movieModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black87,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 150,
                  margin: const EdgeInsets.all(5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: PosterWidget(
                      posterPath: movieModel.posterPath,
                    ),
                  ),
                ),

              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movieModel.title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Padding(
                  padding: EdgeInsets.all(
                    5,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      const WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Padding(
                            padding: EdgeInsets.only(right: 2),
                            child: Icon(
                              Icons.calendar_month,
                              size: 14,
                              color: Colors.white,
                            )),
                      ),
                      TextSpan(
                          text: movieModel.releaseDate,
                          style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(
                    5,
                  ),
                ),
                RatingBarIndicator(
                  rating:movieModel.voteAverage,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  unratedColor: Colors.white,
                  itemCount: 10,
                  itemSize: 15.0,
                  direction: Axis.horizontal,
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
