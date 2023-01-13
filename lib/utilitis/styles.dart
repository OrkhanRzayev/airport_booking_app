import 'package:flutter/material.dart';

Color primary = const Color(0xff687daf);

class Styles {
  static Color kPrimaryColor = primary;
  static Color kTextColor = const Color(0xff3b3b3b);
  static Color kBgColor = const Color(0xffeeedf2);
  static Color kGreyColor = const Color(0xffd2bdd6);
  static Color kOrangeColor = const Color(0xfff37b67);
  static TextStyle kTextStyle =
      TextStyle(fontSize: 16, color: kTextColor, fontWeight: FontWeight.w500);
  static TextStyle kHeadLineStyle =
      TextStyle(fontSize: 26, color: kTextColor, fontWeight: FontWeight.bold);
  static TextStyle kHeadLineStyleMedium =
      TextStyle(fontSize: 20, color: kTextColor, fontWeight: FontWeight.bold);
  static TextStyle kHeadLineStyleSmall = TextStyle(
      fontSize: 17, color: Colors.grey[500], fontWeight: FontWeight.w500);
  static TextStyle kHeadLineStyleSmallest = TextStyle(
      fontSize: 14, color: Colors.grey[500], fontWeight: FontWeight.w500);
}
