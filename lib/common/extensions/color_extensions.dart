

import 'package:flutter/material.dart';

extension ColorExt on Color {
  String toHexString() => "#${value.toRadixString(16).substring(2)}";
}