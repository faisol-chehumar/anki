import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:page_transition/page_transition.dart';

import 'package:anki/theme/theme.dart';
import 'package:anki/constants/constants.dart';
import 'package:anki/screens/screens.dart';

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
          fontFamily: 'Sukhumvit',
        ),
        initialRoute: '/',
        onGenerateRoute: (setttings) {
          switch (setttings.name) {
            case '/':
              return PageTransition(
                child: SplashScreen(),
                type: PageTransitionType.fade,
              );
              break;
            default:
              return null;
          }
        });
  }
}
