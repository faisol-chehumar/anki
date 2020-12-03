import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  final Color colorStart;
  final Color colorEnd;
  const GradientContainer(
      {Key key,
      @required this.child,
      @required this.colorStart,
      @required this.colorEnd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
          colors: [colorStart, colorEnd],
        ),
      ),
      child: child,
    );
  }
}
