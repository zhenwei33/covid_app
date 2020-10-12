import 'package:covid_app/global.dart';
import 'package:covid_app/object/news.dart';
import 'package:covid_app/selectState.dart';
import 'package:covid_app/columnBuilder.dart';
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
      padding: EdgeInsets.only(left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      height: 400,
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text("詩華日報", style: black24),
          ),
          Expanded(
              child: 
              ListView.builder(
                  padding: EdgeInsets.all(0),
                  itemCount: 7,
                  itemExtent: 70.0,
                  itemBuilder: (context, index) {
                    //var _news = widget.news[index];
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectState()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        width: double.infinity,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Container(
                              child: ShaderMask(
                                  shaderCallback: (rect) {
                                    return LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Colors.black,
                                        Colors.transparent
                                      ],
                                    ).createShader(Rect.fromLTRB(
                                        0, 0, rect.width, rect.height));
                                  },
                                  blendMode: BlendMode.dstIn,
                                  child:
                                      // Image.asset(
                                      //   "assets/images/clip-doing-homework.png",
                                      //   fit: BoxFit.cover,
                                      // ),
                                      Image.asset(
                                        "assets/images/clip-doing-homework.png",
                                    //_news.thumbnailUrl,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 60),
                                  Expanded(
                                    child: Text(
                                        "联邦迄今已调派475人 赴沙支援抗疫",
                                        //_news.title,
                                        style: black18Reg,
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                  Text(
                                    "10月11日",
                                    //_news.date.substring(6),
                                    style: black16Reg,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
              ),
        ],
      ),
    );
  }
}
