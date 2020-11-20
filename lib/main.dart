import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';

import 'package:anki/theme/theme.dart';
import 'package:anki/constants/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GlobalConfiguration().loadFromAsset('app_settings');

  runApp(Constants(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: GlobalConfiguration().getValue('app_title').toUpperCase(),
      theme: ThemeData(
        primarySwatch:
            createMaterialColor(Theme.of(context).colorScheme.primaryDefault),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
