import 'package:flutter/material.dart';

class MyTextStyle {
  static TextStyle myTextStyle({color, size, fontWeight}) {
    return TextStyle(
      color: color ?? Colors.black,
      fontSize: size ?? 14,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }
}
