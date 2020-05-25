import 'package:flutter/material.dart';
import 'package:news/utils/cards/card_news_landscape.dart';
import 'package:news/utils/cards/card_orientation_image.dart';
import 'package:news/utils/custom_colors.dart';

class SportsNewsScreen extends StatefulWidget {
  @override
  _SportsNewsScreenState createState() => _SportsNewsScreenState();
}

class _SportsNewsScreenState extends State<SportsNewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.baseColor,
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CardOritationImage(
                image: 'https://upload.wikimedia.org/wikipedia/commons/8/8d/President_Barack_Obama.jpg',
                genre: 'sport',
                title: 'Obama sedang melakukan olahraga berlari',
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'Latest News',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              CardNewsLandscape(
                image: 'https://upload.wikimedia.org/wikipedia/commons/8/8d/President_Barack_Obama.jpg',
                genre: 'sport',
                title: 'Obama sedang melakukan olahraga berlari',
                publisher: 'Renal',
              ),
              CardNewsLandscape(
                image: 'https://upload.wikimedia.org/wikipedia/commons/8/8d/President_Barack_Obama.jpg',
                genre: 'sport',
                title: 'Obama sedang melakukan olahraga berlari',
                publisher: 'Renal',
              ),
              CardNewsLandscape(
                image: 'https://upload.wikimedia.org/wikipedia/commons/8/8d/President_Barack_Obama.jpg',
                genre: 'sport',
                title: 'Obama sedang melakukan olahraga berlari',
                publisher: 'Renal',
              ),
              CardNewsLandscape(
                image: 'https://upload.wikimedia.org/wikipedia/commons/8/8d/President_Barack_Obama.jpg',
                genre: 'sport',
                title: 'Obama sedang melakukan olahraga berlari',
                publisher: 'Renal',
              ),
            ],
          )
      ),
    );
  }
}
