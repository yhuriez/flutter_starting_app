

import 'package:flutter/material.dart';

DeviceType getDeviceType() {
  final data = MediaQueryData.fromWindow(WidgetsBinding.instance!.window);
  return data.size.shortestSide < 550 ? DeviceType.PHONE : DeviceType.TABLET;
}

enum DeviceType {
  PHONE, TABLET
}