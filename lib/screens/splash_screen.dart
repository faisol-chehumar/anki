import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
          height: size.height,
          width: size.width,
          child: Stack(alignment: Alignment.center, children: <Widget>[
            Positioned(
                child: Lottie.asset(
                    'assets/lotties/38287-scanning-searching-for-data.json',
                    width: 350),
                bottom: 0),
          ])), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
