import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_route/auto_route.dart';

import 'package:anki/screens/index.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(page: SplashScreen, initial: true),
    CustomRoute(
        page: WelcomeScreen, transitionsBuilder: TransitionsBuilders.fadeIn),
    AdaptiveRoute(page: MainScreen),
  ],
)
class $AppRouter {}
