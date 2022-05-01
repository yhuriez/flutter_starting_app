
import 'package:flutter/cupertino.dart';

abstract class AppException implements Exception {

  String? message;

  AppException([this.message]);

  String getWording(BuildContext context);

  @override
  String toString() => message ?? "";
}