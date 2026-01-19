import 'package:flutter/material.dart';

class CText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final double? letterSpacing;
  final FontWeight fontWeight;
  final String fontFamily;
  final FontStyle fontStyle;
  final TextDecoration decoration;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const CText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight = FontWeight.normal,
    this.fontFamily = "Montserrat",
    this.fontStyle = FontStyle.normal,
    this.decoration = TextDecoration.none,
    this.letterSpacing,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        decoration: decoration,
        letterSpacing: letterSpacing,
        overflow: overflow,
        decorationColor: color,
      ),
    );
  }
}
