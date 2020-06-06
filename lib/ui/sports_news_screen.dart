import 'package:flutter/material.dart';
import 'package:news/ui/detail_news_screen.dart';
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
            image:
                'https://upload.wikimedia.org/wikipedia/commons/8/8d/President_Barack_Obama.jpg',
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
            image:
                'https://upload.wikimedia.org/wikipedia/commons/8/8d/President_Barack_Obama.jpg',
            genre: 'sport',
            title: 'Obama sedang melakukan olahraga berlari',
            publisher: 'Renal',
            onTap: () {
              _navigateToDetail(context);
            },
          ),
          CardNewsLandscape(
            image:
                'https://upload.wikimedia.org/wikipedia/commons/8/8d/President_Barack_Obama.jpg',
            genre: 'sport',
            title: 'Obama sedang melakukan olahraga berlari',
            publisher: 'Renal',
            onTap: () {
              _navigateToDetail(context);
            },
          ),
          CardNewsLandscape(
            image:
                'https://upload.wikimedia.org/wikipedia/commons/8/8d/President_Barack_Obama.jpg',
            genre: 'sport',
            title: 'Obama sedang melakukan olahraga berlari',
            publisher: 'Renal',
            onTap: () {
              _navigateToDetail(context);
            },
          ),
          CardNewsLandscape(
            image:
                'https://upload.wikimedia.org/wikipedia/commons/8/8d/President_Barack_Obama.jpg',
            genre: 'sport',
            title: 'Obama sedang melakukan olahraga berlari',
            publisher: 'Renal',
            onTap: () {
              _navigateToDetail(context);
            },
          ),
        ],
      )),
    );
  }

  _navigateToDetail(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailNewsScreen(
                  imageCover:
                      'https://bostonglobe-prod.cdn.arcpublishing.com/resizer/Ql7SFLaqPWgcLrpNziNFfZIwGkY=/1440x0/arc-anglerfish-arc2-prod-bostonglobe.s3.amazonaws.com/public/XVMCFHWNCQI6NNDVGPJ2GYUKZ4.jpg',
                  imagePublisher:
                      'https://www.snopes.com/uploads/2019/06/GettyImages-660139574.jpg',
                  title:
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                  genre: 'Politics',
                  date: '2020-05-29',
                  description:
                      'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in '
                      'some form, by injected humour, or randomised words which dont look even slightly believable. '
                      'If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.',
                  publisher: 'Malia',
                )));
  }
}
