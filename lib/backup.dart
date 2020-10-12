import 'package:flutter/material.dart';
import 'package:web_scraper/web_scraper.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/avd.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:covid_app/object/state.dart';
import 'package:covid_app/global.dart';
import 'package:covid_app/cards.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

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

  //List<StateObject> states = [];
  Future <List<StateObject>> states;

  static final url = "http://covid-19.livephotos123.com";
  final webScraper = WebScraper(url);
  List<Map<String, dynamic>> data;

  Future <List<StateObject>>_fetchProducts() async {
    List<StateObject> _states = [];
    if (await webScraper.loadWebPage('')) {
      setState(() {
        data = webScraper.getElement('table > tbody > tr > td', ['class']);
      });
    }
    for (var i = 0; i < data.length - 10; i++) {
      var name = data[i]['title'];
      i = i + 1;
      var newCase = data[i]['title'];
      i = i + 1;
      var infected = data[i]['title'];
      i = i + 1;
      var death = data[i]['title'];

      var _state = StateObject(name, newCase, infected, death);
      _states.add(_state);
    }
    return _states;
    // print("Name: " + states[0].name);
    // print("New: " + states[0].newCase);
    // print("Infected: " + states[0].infected);
    // print("Death: " + states[0].death);
  }

  void initState() {
    super.initState();
    states = _fetchProducts();

    // _dimension = 203.0;
    // _painters.add(SvgPicture.asset('assets/pic1.svg'));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
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
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 250.0,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 6),
                        autoPlayAnimationDuration: Duration(milliseconds: 1400),
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
                  ),
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: FutureBuilder(
                  future: states,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                       print(snapshot.data[0].name);
                       return Text("ez");
                      // return FlatButton(
                      //   child: Container(
                      //     width: double.infinity,
                      //     height: double.infinity,
                      //     color: Colors.white,
                      //     padding: EdgeInsets.only(left: 20, right: 20),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //       children: <Widget>[
                      //         Container(
                      //           height: 60,
                      //           width: 150,
                      //           // color: Colors.amber,
                      //           child: FittedBox(
                      //             fit: BoxFit.fitWidth,
                      //             child: Text(
                      //               // "N. Sembilan",
                      //               states[0].name,
                      //               style: headerBlack,
                      //             ),
                      //           ),
                      //         ),
                      //         Container(
                      //           // color: Colors.green,
                      //           child: Column(
                      //             crossAxisAlignment: CrossAxisAlignment.start,
                      //             mainAxisAlignment: MainAxisAlignment.center,
                      //             children: <Widget>[
                      //               Text(
                      //                 "New Cases",
                      //                 style: black18,
                      //               ),
                      //               Text(
                      //                 "Infected",
                      //                 style: black18,
                      //               ),
                      //               Text("Death", style: black18),
                      //             ],
                      //           ),
                      //         ),
                      //         FittedBox(
                      //           child: Column(
                      //             crossAxisAlignment: CrossAxisAlignment.start,
                      //             mainAxisAlignment: MainAxisAlignment.center,
                      //             children: <Widget>[
                      //               Text(
                      //                 states[0].newCase,
                      //                 style: black18,
                      //               ),
                      //               Text(
                      //                 states[0].infected,
                      //                 style: black18,
                      //               ),
                      //               Text(states[0].death, style: black18),
                      //             ],
                      //           ),
                      //         )
                      //       ],
                      //     ),
                      //   ),
                      // );
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ),
              ),

              Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey,
                child: Center(
                  child: Text(
                    "News feed",
                    style: black18,
                  ),
                ),
              )
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
            ],
          ),
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

    // path.lineTo(size.width, size.height);
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

    // path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
