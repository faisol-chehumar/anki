import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';

import 'package:anki/theme/index.dart';
import 'package:anki/components/index.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: GradientContainer(
          colorStart: Theme.of(context).colorScheme.bgPrimaryLighten,
          colorEnd: Theme.of(context).colorScheme.bgPrimary,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                GlobalConfiguration().getValue('app_title').toUpperCase(),
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.textPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
