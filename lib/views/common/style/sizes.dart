
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/**
 * This file regroup all sizes used in the application.
 * The main goal is to centralize dimension definition to ensure consistency between screen.
 *
 * Sizes here are defined using flutter_screenutil, a library allowing to define sizes proportional
 * to the screen dimensions (elements will have the same size on small screen and large screen).
 */

// Common
final smallSpace = 4.w;
final baseSpace = 8.w;
final mediumSpace = 12.w;
final largeSpace = 16.w;
final xlargeSpace = 24.w;
final bigSpace = 40.w;
final xBigSpace = 50.w;

// Paddings
final paddingScreenInsets = EdgeInsets.only(left: largeSpace, right: largeSpace);

// Main font sizes
final bodyTextSize = 16.sp;
final subtitleTextSize = 20.sp;