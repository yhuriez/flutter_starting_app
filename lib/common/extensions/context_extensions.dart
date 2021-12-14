import 'package:flutter/material.dart';
import '../../generated/l10n.dart';
import 'package:uuid/uuid.dart';

extension ContextExtensions on BuildContext {

  S get strings => S.of(this);

  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

}

