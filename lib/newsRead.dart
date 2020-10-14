import 'package:covid_app/global.dart';
import 'package:covid_app/init.dart';
import 'package:covid_app/object/news.dart';
import 'package:flutter/material.dart';
import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsRead extends StatefulWidget {
  NewsRead({this.news});
  final News news;

  @override
  _NewsReadState createState() => _NewsReadState();
}

class _NewsReadState extends State<NewsRead> {
  Future<String> content;
  Future <void> _launched;
  final _controller = ScrollController();

  void initState() {
    super.initState();
    content = Init.fetchNewsKwongWahFull(widget.news.url);
  }

  Future<void> _launchInBrowser(String getUrl) async {
    //String url = Uri.encodeFull(getUrl);
    String url = getUrl;
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final String toLaunch = '${widget.news.url}';
    return Scaffold(
      body: FutureBuilder(
        future: content,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Container(
                      color: Colors.amber,
                      height: 250,
                      width: double.infinity,
                      child: Stack(
                        fit: StackFit.expand,
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image.network(
                            widget.news.thumbnailUrl,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                  Colors.black.withOpacity(.8),
                                  Colors.transparent
                                ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter)),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            width: double.infinity,
                            padding: EdgeInsets.all(20),
                            height: 200,
                            child: Text(widget.news.title, style: headerWhite),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                        width: double.infinity,
                        height: 400,
                        child: FadingEdgeScrollView.fromScrollView(
                          gradientFractionOnStart: 0.2,
                          gradientFractionOnEnd: 0.2,
                          child: ListView(
                            controller: _controller,
                            padding: EdgeInsets.zero,
                            children: [
                              Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    widget.news.date.trim(),
                                    style: black18,
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  width: double.infinity,
                                  child: Text(
                                    snapshot.data,
                                    style: black20Reg,
                                  )),
                              InkWell(
                                onTap: () => setState(() {
                                  _launched = _launchInBrowser(toLaunch);
                                }),
                                child: Container(
                                    alignment: Alignment.centerRight,
                                    child: RichText(
                                      text: TextSpan(children: [
                                        WidgetSpan(
                                            child: Icon(Icons.arrow_right,
                                                size: 20)),
                                        TextSpan(
                                          text: "去官方網頁",
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              fontFamily: 'Nunito',
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: blue3),
                                        )
                                      ]),
                                    )),
                              ),
                            ],
                          ),
                        )),
                  ],
                ));
          } else {
            return Container(
                child: Center(
              child: CircularProgressIndicator(),
            ));
          }
        },
      ),
    );
  }
}
