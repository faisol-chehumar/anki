import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:auto_route/auto_route.dart';

import 'package:anki/theme/index.dart';
import 'package:anki/constants/index.dart';
import 'package:anki/routes/router.gr.dart';

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
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      builder: ExtendedNavigator.builder<AppRouter>(
        router: AppRouter(),
        initialRoute: Routes.splashScreen,
        builder: (_, extendedNav) => Theme(
          data: ThemeData(
            primarySwatch:
                createMaterialColor(Theme.of(context).colorScheme.bgPrimary),
            visualDensity: VisualDensity.adaptivePlatformDensity,
            fontFamily: 'Sukhumvit',
            brightness: Brightness.light,
          ),
          child: extendedNav,
        ),
      ),
    );
  }
}
