import 'package:flutter/material.dart';
import 'colors.dart';

const themeDefaultRadius = 6.0;
const themeDefaultElevation = 6.0;

// TODO Define input style

final themeFieldBorder = OutlineInputBorder(
    borderSide: BorderSide(color: themeBorderColor, width: 1),
    borderRadius: BorderRadius.circular(themeDefaultRadius));

final themeFieldBorderless = OutlineInputBorder(
    borderSide: BorderSide(color: themeContainerColor, width: 1),
    borderRadius: BorderRadius.circular(themeDefaultRadius));

final themeFieldErrorBorder = OutlineInputBorder(
    borderSide: BorderSide(color: themeErrorColor),
    borderRadius: BorderRadius.circular(themeDefaultRadius));

InputDecoration createInputDecoration(
        {String? hint, bool withBorder = true, IconData? prefixIcon, Color? hintColor}) =>
    InputDecoration(
        border: InputBorder.none,
        disabledBorder: InputBorder.none,
        enabledBorder: (withBorder) ? themeFieldBorder : themeFieldBorderless,
        focusedBorder: (withBorder) ? themeFieldBorder : themeFieldBorderless,
        errorBorder: themeFieldErrorBorder,
        focusedErrorBorder: themeFieldErrorBorder,
        prefixIcon: (prefixIcon != null)
            ? Icon(
                prefixIcon,
                color: themeTextColor,
              )
            : null,
        errorStyle: TextStyle(fontSize: 16.0, color: themeErrorColor),
        hintText: hint ?? "",
        hintStyle: TextStyle(fontSize: 16, color: hintColor ?? themeHintTextColor),
        contentPadding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        fillColor: themeContainerColor,
        filled: true);

InputDecoration createReadOnlyDecoration({String? hint, IconData? prefixIcon}) =>
    InputDecoration(
        border: themeFieldBorderless,
        disabledBorder: themeFieldBorderless,
        prefixIcon: (prefixIcon != null)
            ? Icon(
          prefixIcon,
          color: themeTextColor,
        )
            : null,
        hintText: hint ?? "",
        hintStyle: TextStyle(fontSize: 16, color: themeHintTextColor),
        contentPadding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        fillColor: themeContainerColor,
        filled: true);


List<BoxShadow> createBoxShadows() =>
    [BoxShadow(color: Colors.black54, blurRadius: 10)];
