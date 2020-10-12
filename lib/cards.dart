import 'package:flutter/material.dart';
import 'package:covid_app/global.dart';

class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            "assets/images/clip-doing-homework.png",
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 40),
          Expanded(
            child: Container(
              child: Wrap(
                children: <Widget>[
                  Text(
                    "Stay Home",
                    style: headerWhite,
                  ),
                  Text(
                    "Stay Safe",
                    style: headerWhite,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            "assets/images/clip-waiting-the-end-of-quarantine.png",
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 40),
          Expanded(
            child: Container(
              child: Wrap(
                children: <Widget>[
                  Text(
                    "Just chill",
                    style: headerWhite,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}