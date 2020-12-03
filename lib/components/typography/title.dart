import 'package:flutter/material.dart';

import 'package:anki/theme/index.dart';

class TitleText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  const TitleText({
    Key key,
    @required this.text,
    this.fontSize = 50,
    this.fontWeight = FontWeight.w900,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: Theme.of(context).colorScheme.textPrimary,
      ),
    );
  }
}
