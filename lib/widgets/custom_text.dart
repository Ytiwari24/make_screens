import 'package:flutter/material.dart';

Text customText(String text,
    {Color? color,
    double? fontsize,
    FontWeight? fontweight,
    TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign,
    style: TextStyle(
        color: color ?? Colors.black,
        fontSize: fontsize ?? 14,
        fontWeight: fontweight ?? FontWeight.normal),
  );
}
