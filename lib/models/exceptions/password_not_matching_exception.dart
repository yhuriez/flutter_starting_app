


import 'package:flutter/src/widgets/framework.dart';

import '../../generated/l10n.dart';
import 'app_exception.dart';

class PasswordNotMatchingException extends AppException{

  @override
  String getWording(BuildContext context) => S.of(context).error_password_not_matching;
}