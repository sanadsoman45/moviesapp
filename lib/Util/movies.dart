import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:moviesapp/Util/Moviesdetails.dart';
import 'package:moviesapp/Model/movie_model.dart';

class movies extends StatefulWidget {
  @override
  _moviesState createState() => _moviesState();
}

class _moviesState extends State<movies> {
  int _index=0;
  final List movies=Movie.getMovies();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0xffe9e9e9),
        elevation: 0,
        title: Text("MOVIES",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
      ),
      backgroundColor: Color(0xffe9e9e9),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height*0.49,
          child: PageView.builder(
              itemCount: movies.length,
              controller: PageController(viewportFraction: 0.82),
              onPageChanged: (value) => setState(()=>_index=value),
              itemBuilder:(_,i){
                return Transform.scale(
                  scale: i==_index ? 1:0.9,
                  child: GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>moviesdetails(movie_name: movies[_index].title,movie: movies[_index],))),
                    child: Card(
                      elevation: 6,
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0,bottom: 13),
                            child: Image.network(movies.elementAt(_index).Poster),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              child: Column(
                                children: [
                                  Center(
                                    child: Row(
                                      children: [
                                        Wrap(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(13.0),
                                              child: Text(movies[_index].title,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                            )
                                          ],
                                        ),
                                        Spacer(),
                                        Text(movies[_index].imdbRating,style: TextStyle(color: Colors.blue),),
                                        Text("/10",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                );
              }
          ),
        ),
      ),
    );
  }




}
