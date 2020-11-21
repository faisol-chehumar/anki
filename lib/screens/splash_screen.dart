import 'dart:async';
import 'package:global_configuration/global_configuration.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

import 'package:anki/theme/theme.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacementNamed(context, '/welcome'),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.purple.shade50,
        ),
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Positioned(
            child: Text(
              GlobalConfiguration().getValue('app_title').toUpperCase(),
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.blackDefault,
              ),
            ),
            top: size.height * 0.55,
          ),
          Positioned(
            child: Lottie.asset(
              'assets/lotties/38287-scanning-searching-for-data.json',
              width: 350,
            ),
            top: size.height * 0.2,
          ),
        ]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
