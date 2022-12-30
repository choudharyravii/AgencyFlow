import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FontTextStyle {
  static const fontFamily = "Rubik";

  FontWeight semibold = FontWeight.w600;
  FontWeight regular = FontWeight.w400;
  FontWeight medium = FontWeight.w500;
  FontWeight bold = FontWeight.w700;

  TextStyle textStyle18med(Color fontColor) {
    return TextStyle(
      fontSize: 18,
      color: fontColor,
      fontFamily: 'Futura Bold',
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle textStyle18sem(Color fontColor) {
    return TextStyle(
        fontSize: 19,
        color: fontColor,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600);
  }

  TextStyle textStyle18bold(Color fontColor) {
    return TextStyle(
        fontSize: 19,
        color: fontColor,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700);
  }

  TextStyle textStyle16bold(Color fontColor) {
    return TextStyle(
        fontSize: 19,
        color: fontColor,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700);
  }

  TextStyle textStyle18reg(Color fontColor) {
    return TextStyle(
        fontSize: 18,
        color: fontColor,
        fontFamily: fontFamily,
        fontWeight: regular);
  }

  TextStyle textStyle17sem(Color color) {
    return TextStyle(
        fontSize: 17,
        color: color,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600);
  }

  TextStyle textStyle17bold(Color color) {
    return TextStyle(
        fontSize: 17,
        color: color,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700);
  }

  TextStyle textButtonTextStyle(
      Color fontColor, double fontSize, FontWeight fontWeight) {
    return TextStyle(
        fontSize: fontSize,
        color: fontColor,
        fontFamily: fontFamily,
        fontWeight: fontWeight);
  }

  TextStyle textStyle14med(Color color) {
    return TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: 15);
  }

  TextStyle textStyle14sem(Color color) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: semibold,
      color: color,
      fontSize: 15,
    );
  }

  TextStyle textStyle14reg(Color color) {
    return TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: 14);
  }

  TextStyle textStyle12bol(Color color) {
    return TextStyle(
        decoration: TextDecoration.underline,
        decorationThickness: 2,
        decorationStyle: TextDecorationStyle.solid,
        fontSize: 12,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
        color: color);
  }

  TextStyle textStyle10reg(Color color) {
    return TextStyle(
        fontSize: 10,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w400,
        color: color
        //
        );
  }

  TextStyle textStyle10sem(Color color) {
    return TextStyle(
        fontSize: 11,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600,
        color: color
        //
        );
  }

  TextStyle textStyle10med(Color color) {
    return TextStyle(
        fontSize: 11,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
        color: color
        //
        );
  }

  TextStyle textStyle12reg(Color color) {
    return TextStyle(
        fontSize: 13,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w400,
        color: color
        //
        );
  }

  TextStyle textStyle22med(Color color) {
    return TextStyle(
        fontSize: 22,
        color: color,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500);
  }

  TextStyle textStyle22sem(Color color) {
    return TextStyle(
        letterSpacing: 1,
        fontSize: 23,
        color: color,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600);
  }

  TextStyle textStyle22bold(Color color) {
    return TextStyle(
        fontSize: 22,
        color: color,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700);
  }

  TextStyle textStyle16med(Color color) {
    return TextStyle(
        fontSize: 16,
        color: color,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500);
  }

  TextStyle textStyle16reg(Color color) {
    return TextStyle(
        letterSpacing: .5,
        height: 1.6,
        fontSize: 17,
        color: color,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w400);
  }

  TextStyle textStyle15reg(Color color) {
    return TextStyle(
        fontSize: 15,
        color: color,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w400);
  }

  TextStyle textStyle15med(Color color) {
    return TextStyle(
        fontSize: 15,
        color: color,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500);
  }

  TextStyle textStyle15sem(Color color) {
    return TextStyle(
        fontSize: 15,
        color: color,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600);
  }

  TextStyle textStyle16sem(Color color) {
    return TextStyle(
        fontSize: 16,
        color: color,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600);
  }

  TextStyle textStyle24bold(Color color) {
    return TextStyle(
        fontSize: 25,
        color: color,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700);
  }

  TextStyle textStyle28bold(Color color) {
    return TextStyle(
        fontSize: 28,
        color: color,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700);
  }

  TextStyle textStyle24sem(Color color) {
    return TextStyle(
        fontSize: 24,
        color: color,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600);
  }

  TextStyle textStyle12med(Color color) {
    return TextStyle(
        fontSize: 13,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
        color: color);
  }

  TextStyle textStyle12sem(Color color) {
    return TextStyle(
        fontSize: 12,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600,
        color: color);
  }

  TextStyle textStyle8sem(Color color) {
    return TextStyle(
        fontSize: 8,
        color: color,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600);
  }
}