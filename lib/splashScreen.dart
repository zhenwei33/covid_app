import 'package:covid_app/global.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: ValueKey(0),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Lottie.asset("assets/images/Dog-smell.json", width: 300, height: 300, frameRate: FrameRate(59.0)),
            Text(
              "Hang tight, scraping data...",
              style: black18,
            ),
            Text(
              "請稍等...",
              style: black18,
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              strokeWidth: 6,
              valueColor: AlwaysStoppedAnimation<Color>(blue2)
            )
          ],
        ),
      ),
    );
  }
}
