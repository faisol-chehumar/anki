import 'package:flutter/material.dart';

class Constants extends InheritedWidget {
  static Constants of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Constants>();

  const Constants({Widget child, Key key}) : super(key: key, child: child);

  final String register = 'สมัครสมาชิก';

  @override
  bool updateShouldNotify(Constants oldWidget) => false;
}
