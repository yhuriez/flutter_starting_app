
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../style/input_styles.dart';
import '../../style/sizes.dart';
import '../button/app_button.dart';

showTextAlertDialog(BuildContext context,
    {required String title,
    required String message,
    Function(BuildContext)? positiveAction,
    String? positiveActionText,
    Function(BuildContext)? negativeAction,
    String? negativeActionText}) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(title, style: Theme.of(context).textTheme.subtitle1),
          content: Text(message, style: Theme.of(context).textTheme.bodyText2),
          actions: <Widget>[
            _ActionView(
                positiveAction: positiveAction,
                positiveActionText: positiveActionText ?? S.of(context).actionYes,
                negativeAction: negativeAction,
                negativeActionText: negativeActionText ?? S.of(context).actionNo)
          ],
        );
      });
}

Future<String?> showTextFieldAlertDialog(BuildContext context,
    {required String title,
    required String message,
    String? positiveActionText,
    String? negativeActionText}) async {
  return showDialog(
      context: context,
      builder: (context) {
        final TextEditingController controller = TextEditingController();

        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(title, style: Theme.of(context).textTheme.subtitle1),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(message, style: Theme.of(context).textTheme.bodyText2),
              SizedBox(
                height: largeSpace,
              ),
              TextField(
                  controller: controller,
                  autofocus: true,
                  decoration: createInputDecoration(withBorder: true),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  textInputAction: TextInputAction.done)
            ],
          ),
          actions: <Widget>[
            _ActionView(
                positiveAction: (context) {
                  Navigator.of(context).pop(controller.text);
                },
                positiveActionText: positiveActionText ?? S.of(context).actionOk,
                negativeAction: (_) {}, // No action as we want the field text as result
                negativeActionText: negativeActionText ?? S.of(context).actionCancel,
                popOnPositiveAction: false,
            )
          ],
        );
      });
}

class _ActionView extends StatelessWidget {
  final Function(BuildContext)? positiveAction;
  final String positiveActionText;
  final Function(BuildContext)? negativeAction;
  final String negativeActionText;
  final bool popOnPositiveAction;

  const _ActionView(
      {Key? key,
      this.positiveAction,
      required this.positiveActionText,
      this.negativeAction,
      required this.negativeActionText,
      this.popOnPositiveAction = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(largeSpace),
      child: Row(
        children: [
            Expanded(
              child: AppButton.secondary(
                label: negativeActionText,
                onClick: (context) {
                  Navigator.of(context).pop();
                  negativeAction?.call(context);
                },
              ),
            ),
          if (positiveAction != null)
            SizedBox(
              width: largeSpace,
            ),
          if (positiveAction != null)
            Expanded(
              child: AppButton.primary(
                label: positiveActionText,
                onClick: (context) {
                  if(popOnPositiveAction) {
                    Navigator.of(context).pop();
                  }
                  positiveAction?.call(context);
                },
              ),
            ),
        ],
      ),
    );
  }
}
