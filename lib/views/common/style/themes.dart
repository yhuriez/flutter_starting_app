


import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_starting_app/views/common/style/sizes.dart';
import 'colors.dart';

///
/// Defines the app light main theme (text style, font, main theme colors etc.)
///
ThemeData initLightTheme() {
    // TODO Define Theme
  return ThemeData(
      // fontFamily: "OpenSans", TODO Give font family
      textTheme: TextTheme(
          headline2: TextStyle(fontSize: 40.sp, color: themeTextColor),
          headline5: TextStyle(fontSize: 24.sp, color: themeTextColor, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 24.sp, color: themeTextColor),
          subtitle1: TextStyle(fontSize: subtitleTextSize, color: themeTextColor, fontWeight: FontWeight.bold),
          subtitle2: TextStyle(fontSize: subtitleTextSize, color: themeTextColor),
          bodyText1: TextStyle(fontSize: bodyTextSize, color: themeTextColor, fontWeight: FontWeight.bold),
          bodyText2: TextStyle(fontSize: bodyTextSize, color: themeTextColor),
          button: TextStyle(fontSize: 22.sp, color: themeReverseTextColor, fontWeight: FontWeight.bold),
          caption: TextStyle(fontSize: 16.sp, color: themeTextColor)
      ),
      backgroundColor: themeBackgroundColor,
      dialogBackgroundColor: themeBackgroundColor,
      primaryColor: Colors.white,
      scaffoldBackgroundColor: themeBackgroundColor,
      cardColor: themeContainerColor,
      errorColor: themeErrorColor,
      hintColor: themeHintTextColor,
      indicatorColor: themeTextColor,
      disabledColor: themeContainerColor,
      buttonTheme: ButtonThemeData(buttonColor: themeAccentColor, textTheme: ButtonTextTheme.primary),
  );
}

bool isDarkTheme(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return brightness == Brightness.dark;
}

