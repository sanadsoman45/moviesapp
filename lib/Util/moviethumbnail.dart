import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class moviethumbnail extends StatelessWidget {
  final String thumbnail;

  final String url;

  const moviethumbnail({Key key, this.thumbnail,this.url}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(thumbnail),fit: BoxFit.cover)
              ),
            ),
            GestureDetector(
              onTap:  _launchURL,
                child: Icon(Icons.play_circle_outline,size: 100,color: Colors.white,)
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color(0x00f5f5f5),Color(0xfff5f5f5)],begin: Alignment.topCenter,end: Alignment.bottomCenter),
          ),
          height: 80,
        )
      ],
    );
  }

  void _launchURL() async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

}
