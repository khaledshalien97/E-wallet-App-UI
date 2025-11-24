import 'package:flutter/material.dart';

Widget commonTextWidget({
  String? text,
  double? fontSize,
  Color? color,
  FontWeight? fontWeight,
  TextStyle Function()? googleFonts,
}) {
  return Text(
    text!,
    style: googleFonts!().copyWith(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    ),
  );
}
