
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../generated/l10n.dart';
import '../button/app_button.dart';
import 'state_change_notifier.dart';

class StateValidationButton<STATE extends StateChangeNotifier> extends StatelessWidget {

  final String? label;
  final Function(BuildContext) onPressed;

  const StateValidationButton({Key? key, this.label, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final loading = context.select<STATE, bool>((state) => state.loading);

    return AppButton.primary(onClick: onPressed,
        loading: loading,
        label: label ?? S.of(context).actionOk);
  }
}