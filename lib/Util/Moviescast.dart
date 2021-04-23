import 'package:flutter/material.dart';
import 'package:moviesapp/Model/movie_model.dart';

import 'MovieField.dart';

class MovieCast extends StatelessWidget {
  final Movie movie;


  const MovieCast({Key key, this.movie}) : super(key: key);@override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          MovieField(field:"Cast",value:movie.actors),
          MovieField(field:"Directors",value:movie.Director),
          MovieField(field: "Awards",value: movie.Awards,),
        ],
      ),
    );
  }
}
