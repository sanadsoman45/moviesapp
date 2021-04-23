import 'package:flutter/material.dart';
import 'package:moviesapp/Model/movie_model.dart';

import 'MovieDetailsHeader.dart';
import 'MoviePoster.dart';

class Moviedetailsheaderwithposter extends StatelessWidget {

  final Movie movie;

  const Moviedetailsheaderwithposter({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          MoviePoster(poster:movie.Images[0].toString()),
          SizedBox(
            width: 16,
          ),
          Expanded(child: MovieDetailsHeader(movie:movie))
        ],
      ),
    );
  }
}
