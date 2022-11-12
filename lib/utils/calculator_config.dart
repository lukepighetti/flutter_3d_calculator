import 'package:flutter/material.dart';

class CalculatorConfig {
  CalculatorConfig({
    required this.calculatorSide,
    this.animationCurve = Curves.easeIn,
    this.borderRadius = 15,
    this.keysHaveShadow = true,
    this.baseColor = Colors.blueGrey,
    this.autoTransform = true,
  });

  final double borderRadius;
  final bool keysHaveShadow;
  final MaterialColor baseColor;
  final bool autoTransform;

  final Color keysShadowColor = Colors.blueGrey.shade900;

  double get keysGap => calculatorSide * 0.04;
  final Curve animationCurve;

  final int keysPerRow = 4;

  double get fontSize => keySideMin * 0.6;

  final double calculatorSide;
  final double calculatorBodyMaxSidesDistance = 130;

  double get calculatorSideWithDistance =>
      calculatorTotalSide + calculatorBodyMaxSidesDistance;

  double get calculatorTotalSide => calculatorSide + calculatorPadding * 2;

  final double calculatorPadding = 20;

  double get calculatorVerticalBodyIndent => 20 * 2.5;

  double get keySideMin =>
      (calculatorSide - (keysGap * (keysPerRow - 1))) / keysPerRow;

  Size get calculatorSize => Size(calculatorSide, calculatorSide);
}
