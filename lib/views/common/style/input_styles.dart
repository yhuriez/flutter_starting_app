import 'package:flutter/material.dart';
import 'colors.dart';
import 'sizes.dart';

const themeDefaultRadius = 6.0;
const themeDefaultElevation = 6.0;

/**
 * This file defines the input style elements that can be used for text input.
 */

// TODO Define your own input style here

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
        errorStyle: TextStyle(fontSize: bodyTextSize, color: themeErrorColor),
        hintText: hint ?? "",
        hintStyle: TextStyle(fontSize: bodyTextSize, color: hintColor ?? themeHintTextColor),
        contentPadding: EdgeInsets.only(left: largeSpace, right: largeSpace, top: baseSpace, bottom: baseSpace),
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
        hintStyle: TextStyle(fontSize: bodyTextSize, color: themeHintTextColor),
        contentPadding: EdgeInsets.only(left: largeSpace, right: largeSpace, top: baseSpace, bottom: baseSpace),
        fillColor: themeContainerColor,
        filled: true);


List<BoxShadow> createBoxShadows() => [BoxShadow(color: Colors.black54, blurRadius: 10)];
