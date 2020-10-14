import 'package:covid_app/fadeInUI.dart';
import 'package:covid_app/global.dart';
import 'package:covid_app/object/news.dart';
import 'package:covid_app/newsRead.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final News news;
  final double fadeDelay;
  NewsCard({this.news, this.fadeDelay});

  @override
  Widget build(BuildContext context) {
    return FadeIn(fadeDelay, "translateX", 100, Container(
        padding: EdgeInsets.only(top: 10),
        height: 70,
        // color: Colors.green,
        child: Container(
          // color: Colors.amber,
          child: InkWell(
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  child: ShaderMask(
                      shaderCallback: (rect) {
                        return LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.black, Colors.transparent],
                        ).createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                      },
                      blendMode: BlendMode.dstIn,
                      child: Image.network(
                        //"assets/images/clip-doing-homework.png",
                        this.news.thumbnailUrl,
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 60),
                      Expanded(
                        child: Text(
                            //"联邦迄今已调派475人 赴沙支援抗疫",
                            this.news.title,
                            style: black18Reg,
                            overflow: TextOverflow.ellipsis),
                      ),
                      Text(
                        //"10月11日",
                        this.news.date.substring(7),
                        style: black16Reg,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => NewsRead(news: this.news)));
            },
          ),
        )));
  }
}
