import 'package:flutter/material.dart';

Color customColor = Colors.deepPurple.shade50;  // Custom gold color

RadialGradient goldWhiteGradient = RadialGradient(
  colors: [Colors.lightBlueAccent.shade100, customColor],
  center: Alignment.center,
  radius: 0.1,
);