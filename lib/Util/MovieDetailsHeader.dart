import 'package:flutter/material.dart';
import 'package:moviesapp/Model/movie_model.dart';

class MovieDetailsHeader extends StatelessWidget {
  final Movie movie;

  const MovieDetailsHeader({Key key, this.movie}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${movie.Year}.${movie.Genre}".toUpperCase(),style: TextStyle(color: Colors.indigoAccent,fontWeight: FontWeight.w400),),
        Text("${movie.title}",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 32),),
        Text.rich(TextSpan(
          style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300),
          children: [
            TextSpan(
              text:movie.plot
            ),
            
          ]
        ))
      ],
    );
  }
}
