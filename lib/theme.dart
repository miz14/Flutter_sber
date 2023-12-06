import 'package:flutter/material.dart';

class MyColors {
  static const green = Color.fromRGBO(6, 132, 65, 1);
  static const lightBorder = Color.fromRGBO(0, 0, 20, 0.08);
  static const white = Colors.white;
  static const avatarShadow = Color.fromRGBO(29, 29, 37, 0.48);

  static const black = Colors.black;
  static var black08 = Colors.black.withOpacity(0.08);
  static var black55 = Colors.black.withOpacity(0.55);

  static const doubleShadow = Color.fromRGBO(79, 79, 108, 0.07);
}

class MyFont {
  static var black55w500s14 = TextStyle(
      fontFamily: "SFProText",
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: MyColors.black55);
  static const blackw500s14Plus = TextStyle(
      fontFamily: "SFProText",
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.28,
      letterSpacing: -0.4,
      color: MyColors.black);
  static var black55w500s14Plus = TextStyle(
      fontFamily: "SFProText",
      fontSize: 14,
      height: 1.28,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.4,
      color: MyColors.black55);
  static const blackw500s16Plus = TextStyle(
    fontFamily: "SFProText",
    fontSize: 16,
    height: 1.25,
    fontWeight: FontWeight.w500,
    color: MyColors.black,
    letterSpacing: -0.4,
  );
  static var black55w500s16Plus = TextStyle(
    fontFamily: "SFProText",
    fontSize: 16,
    height: 1.25,
    fontWeight: FontWeight.w500,
    color: MyColors.black55,
    letterSpacing: -0.4,
  );
  static const blackw700s20Plus = TextStyle(
      fontFamily: "SFProText",
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: MyColors.black,
      height: 1.2,
      letterSpacing: -0.7);
  static const blackw700s24Plus = TextStyle(
    fontFamily: "SFProText",
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: MyColors.black,
    height: 1.33,
    letterSpacing: -0.7
  );
}
