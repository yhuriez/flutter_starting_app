


import 'package:flutter/material.dart';

import '../../../../models/exceptions/app_exception.dart';

abstract class StateChangeNotifier extends ChangeNotifier {

  bool _loading = false;
  AppException? _error;

  bool get loading => _loading;
  AppException? get error => _error;

  @protected
  Future<T?> update<T>(Future<T> doUpdate()) async {
    updateLoading(true);

    try {
      final result = await doUpdate();
      updateLoading(false);
      return result;

    } on AppException catch (e) {
      updateError(e);
      return null;
    }
  }

  @protected
  updateLoading(bool isLoading) {
    _loading = isLoading;
    _error = null;
    notifyListeners();
  }

  @protected
  updateError(AppException exception) {
    _error = exception;
    _loading = false;
    notifyListeners();
  }
}