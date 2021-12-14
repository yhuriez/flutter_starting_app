


import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData initLightTheme() {
    // TODO Define Theme
  return ThemeData(
      // fontFamily: "OpenSans", TODO Give font family
      textTheme:
      TextTheme(
          headline2: TextStyle(fontSize: 40, color: themeTextColor),
          headline5: TextStyle(fontSize: 24, color: themeTextColor, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 24, color: themeTextColor),
          subtitle1: TextStyle(fontSize: 20, color: themeTextColor, fontWeight: FontWeight.bold),
          subtitle2: TextStyle(fontSize: 18, color: themeTextColor),
          bodyText1: TextStyle(fontSize: 16, color: themeTextColor, fontWeight: FontWeight.bold),
          bodyText2: TextStyle(fontSize: 16, color: themeTextColor),
          button: TextStyle(fontSize: 22, color: themeReverseTextColor, fontWeight: FontWeight.bold),
          caption: TextStyle(fontSize: 16, color: themeTextColor)
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

