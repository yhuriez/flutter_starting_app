


import 'package:flutter/src/widgets/framework.dart';

import '../../domain/configuration/logger.dart';
import '../../generated/l10n.dart';
import 'app_exception.dart';

class ApiException extends AppException {

  ApiException(String message, [Exception? cause]) {
    logger.e(message, cause ?? this);
  }

  @override
  String getWording(BuildContext context) => S.of(context).error_unknown;
}