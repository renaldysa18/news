import 'package:flutter/material.dart';

class DetailNewsScreen extends StatefulWidget {
  String imageCover, imagePublisher;
  String genre, title, date, description, publisher;

  DetailNewsScreen(
      {this.imageCover,
      this.imagePublisher,
      this.genre,
      this.title,
      this.date,
      this.description,
      this.publisher});

  @override
  _DetailNewsScreenState createState() => _DetailNewsScreenState(
      imageCover: imageCover,
      imagePublisher: imagePublisher,
      genre: genre,
      title: title,
      date: date,
      description: description,
      publisher: publisher);
}

class _DetailNewsScreenState extends State<DetailNewsScreen> {
  String imageCover, imagePublisher;
  String genre, title, date, description, publisher;

  _DetailNewsScreenState(
      {this.imageCover,
      this.imagePublisher,
      this.genre,
      this.title,
      this.date,
      this.description,
      this.publisher});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _sectionHeader(title: title, genre: genre, date: date),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: _sectionImage(imageCover),
                ),
                _sectionContent(
                    image: imagePublisher,
                    publisher: publisher,
                    description: description)
              ],
            ),
          ),
        ),
      ),
    );
  }

  _sectionImage(String image) {
    return Image.network(
      image,
      fit: BoxFit.fill,
    );
  }

  _sectionHeader({String title, String genre, String date}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Text(
            genre,
            style: TextStyle(color: Colors.red),
          ),
        ),
        Container(
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Container(
          child: Text(
            date,
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }

  _sectionContent({String image, String publisher, String description}) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: <Widget>[
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.fill
                  )
                ),
                margin: EdgeInsets.only(right: 10),
              ),
              Text(
                publisher,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        Text(
          description,
          style: TextStyle(color: Colors.black),
        )
      ],
    );
  }
}
