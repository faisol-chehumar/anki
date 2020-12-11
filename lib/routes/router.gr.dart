// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/index.dart';

class Routes {
  static const String splashScreen = '/';
  static const String welcomeScreen = '/welcome-screen';
  static const String mainScreen = '/main-screen';
  static const all = <String>{
    splashScreen,
    welcomeScreen,
    mainScreen,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.welcomeScreen, page: WelcomeScreen),
    RouteDef(Routes.mainScreen, page: MainScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    WelcomeScreen: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            WelcomeScreen(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    MainScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const MainScreen(),
        settings: data,
      );
    },
  };
}
