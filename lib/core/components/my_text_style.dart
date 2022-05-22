import 'package:flutter/material.dart';

class MyTextStyle {
  static myTextStyle({color, size, fontWeight}) {
    TextStyle(
      color: color ?? Colors.black,
      fontSize: size ?? 14,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }
}
