import 'package:flutter/material.dart';
import 'package:news/utils/custom_colors.dart';
import 'package:news/ui/moving_news_screen.dart';
import 'package:news/ui/polities_news_screen.dart';
import 'package:news/ui/sports_news_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                "GrandNews",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            elevation: 0.0,
            backgroundColor: CustomColors.baseColor,
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: "Sports",),
                Tab(text: "Polities",),
                Tab(text: "Moving",),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              SportsNewsScreen(),
              PolitiesNewsScreen(),
              MovingNewsScreen(),
            ],
          )
        ),
      ),
    );
  }
}
