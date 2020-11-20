import 'package:flutter/material.dart';

extension CustomerColorScheme on ColorScheme {
  static const _kournikova = 0xFFFFDB79;
  static const _darkColor = 0xFFFFDB79;

  Color get primaryDefault => brightness == Brightness.light
      ? const Color(_kournikova)
      : const Color(_darkColor);
}
