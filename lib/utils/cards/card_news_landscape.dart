import 'package:flutter/material.dart';
import 'package:news/utils/custom_colors.dart';

class CardNewsLandscape extends StatelessWidget {

  String image, title, genre, publisher;
  CardNewsLandscape({this.image, this.title, this.genre, this.publisher});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: CustomColors.baseColor,
      child: InkWell(
        child: Row(
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              child: _sectionImage(image),
            ),
            Expanded(
              child: _sectionContent(title: title, genre: genre, publisher: publisher),
            ),
          ],
        ),
      ),
    );
  }

  _sectionImage(String image){
    return Image.network(image);
  }

  _sectionContent({String title, String genre, String publisher}){
    return Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: Colors.white
          ),
        ),
        Row(
          children: <Widget>[
            Text(
              genre,
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            Text(
              publisher,
              style: TextStyle(
                color: Colors.grey
              ),
            ),
          ],
        ),
      ],
    );
  }
}
