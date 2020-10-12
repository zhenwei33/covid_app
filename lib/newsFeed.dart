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
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text("光華日報", style: black24),
            //child: Text("詩華日報", style: black24),
          ),
          NewsCard(news: widget.news[0]),
          NewsCard(news: widget.news[1]),
          NewsCard(news: widget.news[2]),
          NewsCard(news: widget.news[3]),
          NewsCard(news: widget.news[4]),
        ],
      ),
    );
  }
}
