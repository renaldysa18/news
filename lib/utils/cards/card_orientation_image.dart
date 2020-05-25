import 'package:flutter/material.dart';

class CardOritationImage extends StatelessWidget {

  String image;
  String title;
  String genre;

  CardOritationImage({this.image, this.title, this.genre});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Stack(
          children: <Widget>[
            Container(
              height: 500,
              width: double.infinity,
              child: _sectionImage(image),
            ),
            Positioned(
              left: 16.0,
              right: 16.0,
              bottom: 20.0,
              child: Container(
                width: double.infinity,
                child: _sectionText(title: title, genre: genre),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _sectionImage(String image){
    return Image.network(
        image,
      fit: BoxFit.fill,
    );
  }

  _sectionText({String title, String genre}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          genre,
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
