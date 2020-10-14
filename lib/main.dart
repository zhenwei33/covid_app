import 'package:covid_app/fadeInUI.dart';
import 'package:covid_app/newsFeed.dart';
import 'package:covid_app/object/news.dart';
import 'package:covid_app/selectState.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:covid_app/object/state.dart';
import 'package:covid_app/global.dart';
import 'package:covid_app/cards.dart';
import 'package:covid_app/init.dart';
import 'package:covid_app/statesTable.dart';
import 'package:covid_app/splashScreen.dart';
import 'package:covid_app/footer.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Future _initializeData = Init.initialize();
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            pageTransitionsTheme: PageTransitionsTheme(builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            })),
        // home: SplashScreen());
        home: FutureBuilder(
          future: _initializeData,
          builder: (context, snapshot) {
            Widget splashScreen;
            if (snapshot.connectionState == ConnectionState.waiting) {
                  // Container(
                  //   child: Text('${snapshot.data}'),
                  // );
                // splashScreen = Container(
                //   key: UniqueKey(),
                //   width: MediaQuery.of(context).size.width,
                //   height: MediaQuery.of(context).size.height,
                //   color: cyan2,
                // );
                splashScreen = SplashScreen();
                
            } else {
              splashScreen = MyHomePage(
                  title: 'Flutter Demo Home Page',
                  states: snapshot.data[0],
                  news: snapshot.data[1],
                );
            }
            return AnimatedSwitcher(
                  duration: Duration(seconds: 2), child: splashScreen);
          },
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.states, this.news}) : super(key: key);
  final String title;
  final List<StateObject> states;
  final List<News> news;

  //final List states;
  //final List news;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  List cardList = [Item1(), Item2()];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  int prefsState = 0;
  Future<String> _getPrefsState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('PrefsState') == null) {
      return "0";
    } else {
      return prefs.getString('PrefsState');
    }
  }

  setPrefsState() {
    _getPrefsState().then((value) {
      setState(() {
        prefsState = int.parse(value);
      });
    });
  }

  Widget loadState(int choice) {
    setPrefsState();
    String attribute;
    switch (choice) {
      case 0:
        attribute = widget.states[prefsState].name;
        break;
      case 1:
        attribute = widget.states[prefsState].newCase;
        break;
      case 2:
        attribute = widget.states[prefsState].infected;
        break;
      case 3:
        attribute = widget.states[prefsState].death;
        break;
    }
    return Text(attribute, style: black18);
  }

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: ValueKey(1),
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child:
            //Text("testing")
            ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [blue3, blue2],
                            end: Alignment.bottomRight)),
                    child: FadeIn(
                      2.0,
                      "translateY",
                      50.0,
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 250.0,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 6),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 1400),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          pauseAutoPlayOnTouch: true,
                          aspectRatio: 2.0,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                        ),
                        items: cardList.map((card) {
                          return Builder(builder: (BuildContext context) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.30,
                              width: MediaQuery.of(context).size.width,
                              child: Card(
                                color: Colors.transparent,
                                elevation: 0,
                                child: card,
                              ),
                            );
                          });
                        }).toList(),
                      ),
                    )),
                Container(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map<Widget>(cardList, (index, url) {
                      return Container(
                        width: 15.0,
                        height: 5.0,
                        padding: EdgeInsets.only(bottom: 50),
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20.0),
                          color: _currentIndex == index ? blue3 : Colors.grey,
                        ),
                      );
                    }),
                  ),
                ),
                Transform.rotate(
                  angle: 180 * pi / 180,
                  child: ClipPath(
                    clipper: MyClipper(),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      color: Colors.white.withOpacity(.6),
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: 180 * pi / 180,
                  child: ClipPath(
                    clipper: MyClipper2(),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            FadeIn(
                2.3,
                "translateX",
                100,
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                SelectState(states: widget.states)));
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.white,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              height: 60,
                              width: 150,
                              child: FittedBox(
                                  fit: BoxFit.fitWidth, child: loadState(0)),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "New Cases",
                                    style: black18,
                                  ),
                                  Text(
                                    "Infected",
                                    style: black18,
                                  ),
                                  Text("Death", style: black18),
                                ],
                              ),
                            ),
                            FittedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  loadState(1),
                                  loadState(2),
                                  loadState(3),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ))),

            NewsFeed(news: widget.news),
            //NewsFeed(news: testList),
            StatesTable(
              states: widget.states,
            ),

            // Container(
            //   padding: EdgeInsets.all(20),
            //   color: Colors.amber,
            //   child: Column(
            //     children: <Widget>[
            //       Align(
            //           alignment: Alignment.centerLeft,
            //           child: Text("Covid-19 Heat Map", style: black24)),
            //       Container(
            //         color: Colors.pink,
            //         child: SvgPicture.asset('assets/pic1.svg'),
            //       )
            //     ],
            //   ),
            // ),
            Footer()
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 10);

    var controlPoint1 = new Offset(size.width / 4, size.height);
    var endPoint1 = new Offset(size.width / 2.25, size.height - 30);
    path.quadraticBezierTo(
        controlPoint1.dx, controlPoint1.dy, endPoint1.dx, endPoint1.dy);

    var controlPoint2 =
        new Offset(size.width - (size.width / 3.25), size.height - 64);
    var endPoint2 = new Offset(size.width, size.height - 5);
    path.quadraticBezierTo(
        controlPoint2.dx, controlPoint2.dy, endPoint2.dx, endPoint2.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MyClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 30);

    var controlPoint1 = new Offset(size.width / 4, size.height);
    var endPoint1 = new Offset(size.width / 2.25, size.height - 50);
    path.quadraticBezierTo(
        controlPoint1.dx, controlPoint1.dy, endPoint1.dx, endPoint1.dy);

    var controlPoint2 =
        new Offset(size.width - (size.width / 3.25), size.height - 110);
    var endPoint2 = new Offset(size.width, size.height - 10);
    path.quadraticBezierTo(
        controlPoint2.dx, controlPoint2.dy, endPoint2.dx, endPoint2.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
