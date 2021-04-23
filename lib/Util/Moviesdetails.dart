import 'package:flutter/material.dart';
import 'package:moviesapp/Model/movie_model.dart';
import 'package:moviesapp/Util/Moviedetailsextraposters.dart';
import 'package:moviesapp/Util/Moviedetailsheaderwithposter.dart';
import 'package:moviesapp/Util/Moviescast.dart';
import 'package:moviesapp/Util/moviethumbnail.dart';



class moviesdetails extends StatefulWidget {
  final String movie_name;
  final Movie movie;

  const moviesdetails({Key key, this.movie_name, this.movie}) : super(key: key);



  @override
  _moviesdetailsState createState() => _moviesdetailsState();
}


class _moviesdetailsState extends State<moviesdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0xffe9e9e9),
        elevation: 0,
        title: Text("MOVIES",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
      ),
      body: ListView(
        children: [
          moviethumbnail(thumbnail: widget.movie.Images[0],url: widget.movie.url,),
          Moviedetailsheaderwithposter(movie: widget.movie,),
          Divider(thickness: 0.5,color: Colors.grey,),
          MovieCast(movie: widget.movie,),
           Divider(thickness: 1.2,color: Colors.grey,),
          Moviedetailsextraposters(posters: widget.movie.Images,)
        ],
      ),
    );
  }
}
