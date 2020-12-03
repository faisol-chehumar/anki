import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';

import 'package:anki/theme/index.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.bgPrimary,
      body: Center(
        child: Container(
          child: Stack(
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
