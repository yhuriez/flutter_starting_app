


import 'package:flutter/src/widgets/framework.dart';

import '../../generated/l10n.dart';
import 'app_exception.dart';

class UnauthenticatedException extends AppException{

  @override
  String getWording(BuildContext context) => S.of(context).error_user_not_authorized;
}