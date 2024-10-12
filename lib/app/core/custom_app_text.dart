import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:massenger_app3/app/core/app_sizes.dart';

class CustomAppText extends StatelessWidget {
    CustomAppText({
    required this.title,
    required this.fontSize,
    required this.fontWeight,
    required this.color
  });


  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color
      ),
    );
  }
}
