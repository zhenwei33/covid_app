import 'package:covid_app/global.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [blue3, blue2], end: Alignment.bottomRight)),
            child: Stack(
              children: [
                ClipPath(
                  clipper: MyClipper2(),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    color: Colors.white.withOpacity(.8),
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    color: Colors.white,
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: 30,
            child: Text("Source from covid-19.livephotos123.com, KwongWah.com.my",
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 14,
              color: Colors.white
            ),
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [blue3, blue2], end: Alignment.bottomRight)),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
        size.width * 0.3, size.height - 60, size.width * 0.5, size.height - 35);
    path.quadraticBezierTo(
        size.width * 0.8, size.height, size.width, size.height - 70);

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
    path.quadraticBezierTo(
        size.width * 0.2, size.height - 55, size.width * 0.6, size.height - 20);
    path.quadraticBezierTo(
        size.width * 0.85, size.height - 10, size.width, size.height - 30);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
