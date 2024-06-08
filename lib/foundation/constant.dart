import 'package:flutter/material.dart';

class Constant {
  static Color primaryColor = const Color(0xff83D4EE);
  static Color greyColor = const Color(0xff9B9999);
  static Color blackColor = const Color(0xff000000);
  static Color colorDetail = const Color(0xff8A2F76);

  static BoxDecoration articleDecoration = BoxDecoration(
      color: Constant.primaryColor,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.7),
          offset: const Offset(0, 3),
          blurRadius: 2.5,
          spreadRadius: 2,
        ),
      ]);

  static BoxDecoration imageDecoration = BoxDecoration(
    color: greyColor.withOpacity(0.98),
    borderRadius: BorderRadius.circular(10),
  );

  static TextStyle dateStyle = TextStyle(
      color: Constant.greyColor, fontSize: 11, fontWeight: FontWeight.w700);
  static TextStyle titleStyle = TextStyle(
      color: Constant.blackColor, fontSize: 16, fontWeight: FontWeight.w800);
  static TextStyle description = TextStyle(
      color: Constant.blackColor, fontSize: 10, fontWeight: FontWeight.w300,wordSpacing: 1);
  static TextStyle errorText = const TextStyle(fontWeight: FontWeight.w700);
  static TextStyle appBarTitle = const TextStyle(
      fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white);
  static TextStyle textTitleDetail = const TextStyle(
      fontWeight: FontWeight.w500,
      wordSpacing: 1,
      fontSize: 22,
      color: Colors.white);
  static TextStyle descriptionDetail = const TextStyle(
      fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400);
}
