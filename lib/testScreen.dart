import 'package:covid_app/newsRead.dart';
import 'package:covid_app/object/news.dart';
import 'package:flutter/material.dart';


class TestScreen extends StatelessWidget {
  static const String url = "https://www.kwongwah.com.my/20201011/%e5%85%ab%e6%89%93%e7%81%b5%e5%8e%bf%e5%88%97%e7%ba%a2%e5%8c%ba-298%e6%a0%a1%e5%91%a8%e4%b8%80%e8%b5%b7%e5%81%9c%e8%af%be/";
  final News news = News("https://www.kwongwah.com.my/wp-content/uploads/2020/10/201011gn04.jpg", "八打灵县列红区 298校周一起停课", "2020年10月11日", url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => NewsRead(news: this.news)));
            },
            child: Text("test"),
          ),
          
        ),
      ),
    );
  }

}