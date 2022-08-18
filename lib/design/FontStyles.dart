import 'package:flutter/material.dart';

TextStyle subheadingFontStyle(double screenWidth) {
  return TextStyle(
    color: Colors.pink,
    fontSize: screenWidth * 0.045,
    fontWeight: FontWeight.w500,
  );
}

TextStyle headingFontStyle(double screenWidth) {
  return TextStyle(
    color: Colors.yellow,
    fontSize: screenWidth * 0.05,
    fontWeight: FontWeight.w500,
  );
}
