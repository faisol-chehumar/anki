import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:page_transition/page_transition.dart';

import 'package:anki/theme/index.dart';
import 'package:anki/constants/index.dart';
import 'package:anki/screens/index.dart';

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
              createMaterialColor(Theme.of(context).colorScheme.bgPrimary),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Sukhumvit',
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          /* dark theme settings */
        ),
        themeMode: ThemeMode.light,
        initialRoute: '/',
        onGenerateRoute: (setttings) {
          switch (setttings.name) {
            case '/':
              return PageTransition(
                child: SplashScreen(),
                type: PageTransitionType.fade,
              );
              break;
            case '/welcome':
              return PageTransition(
                child: WelcomeScreen(),
                type: PageTransitionType.fade,
              );
              break;
            default:
              return null;
          }
        });
  }
}
