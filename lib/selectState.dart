import 'dart:math';

import 'package:covid_app/global.dart';
import 'package:covid_app/object/state.dart';
import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SelectState extends StatefulWidget {
  final List<StateObject> states;
  SelectState({this.states});

  @override
  _SelectStateState createState() => _SelectStateState();
}

class _SelectStateState extends State<SelectState> {
  final _controller = ScrollController();
  
  Future<bool> _savePrefsState(int prefsState) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString('PrefsState', prefsState.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  blue3,
                  blue2,
                ], end: Alignment.bottomRight)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      alignment: Alignment.centerLeft,
                      height: double.infinity,
                      width: double.infinity,
                      child: Text("Select State", style: headerWhite),
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
              ),
              Expanded(
                child: Container(
                  child: FadingEdgeScrollView.fromScrollView(
                    gradientFractionOnStart: 0.2,
                    gradientFractionOnEnd: 0.2,
                    child: ListView.builder(
                      controller: _controller,
                        padding: EdgeInsets.zero,
                        itemCount: widget.states.length,
                        itemBuilder: (context, index) {
                          var state = widget.states[index];
                          //print(widget.states.length);
                          return InkWell(
                            onTap: () {
                              _savePrefsState(index);
                              Navigator.of(context).pop();
                            },
                            child: ListTile(
                              title: Text(state.name, style: black18Reg),
                              trailing: Text(state.infected, style: black16Reg),
                            ),
                          );
                        }),
                  ),
                ),
              ),
              // Center(
              //   child: Container(
              //     width: 200,
              //     height: 70,
              //     color: Colors.amber,
              //     child: InkWell(
              //         child: Text("Back"),
              //         onTap: () {
              //           Navigator.of(context).pop();
              //         }),
              //   ),
              // ),
            ],
          )),
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
