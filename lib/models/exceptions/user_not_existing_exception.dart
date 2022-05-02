


import 'package:flutter/src/widgets/framework.dart';

import '../../generated/l10n.dart';
import 'app_exception.dart';

class UserNotExistingException extends AppException{

  @override
  String getWording(BuildContext context) => S.of(context).error_user_not_existing;
}