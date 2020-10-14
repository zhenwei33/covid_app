import 'package:covid_app/global.dart';
import 'package:covid_app/object/news.dart';
import 'package:covid_app/selectState.dart';
import 'package:covid_app/columnBuilder.dart';
import 'package:covid_app/newsCard.dart';
import 'package:flutter/material.dart';

class NewsFeed extends StatefulWidget {
  NewsFeed({this.news});
  final List<News> news;

  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  final double initialFade = 3.0;
  final double subsequentFade = 0.5;

  Widget _createNewsCard() {
    List<Widget> _children = [];
    _children.add(Container(
      alignment: Alignment.centerLeft,
      child: Text("光華日報", style: black24),
    ));
    for (var i = 0; i < 5; i++) {
      _children.add(NewsCard(
          news: widget.news[i], fadeDelay: initialFade + (i * subsequentFade)));
    }

    return Column(
      children: _children,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          // Container(
          //   alignment: Alignment.centerLeft,
          //   child: Text("光華日報", style: black24),
          //   //child: Text("詩華日報", style: black24),
          // ),
          _createNewsCard()
          // NewsCard(news: widget.news[0], fadeDelay: 3.0),
          // NewsCard(news: widget.news[1], fadeDelay: 3.5),
          // NewsCard(news: widget.news[2], fadeDelay: 3.1),
          // NewsCard(news: widget.news[3], fadeDelay: 3.4),
          // NewsCard(news: widget.news[4], fadeDelay: 3.7),
        ],
      ),
    );
  }
}
