import 'package:flutter/material.dart';

extension CustomerColorScheme on ColorScheme {
  static const defaultBlack = Colors.black87;
  static const defaultWhite = Colors.white;

  static const _pattens_blue = 0xFFCFE8EF;
  static const _sail = 0xFFA0C4E2;
  static const _tangaroa = 0xFF0B2545;
  static const _aqua_spring = 0xFFEEF4ED;

  Color get bgPrimary => brightness == Brightness.light
      ? const Color(_sail)
      : const Color(_tangaroa);

  Color get textPrimary => brightness == Brightness.light
      ? const Color(_tangaroa)
      : const Color(_aqua_spring);
}
