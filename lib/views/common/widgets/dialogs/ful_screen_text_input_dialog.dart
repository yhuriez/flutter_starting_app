import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../style/input_styles.dart';
import '../../style/sizes.dart';
import '../button/app_button.dart';
import '../screen/app_bar.dart';

class FullScreenTextInputDialog extends StatelessWidget {

  static const String routeName = "text_input";

  final String title;
  final String? hint;
  final String? initialValue;

  const FullScreenTextInputDialog({Key? key, required this.title, this.hint, this.initialValue}) : super(key: key);

  static Route<String> route({required String title, String? hint, String? initialValue}) {
    return MaterialPageRoute(
        builder: (_) => FullScreenTextInputDialog(title: title, hint: hint, initialValue: initialValue,),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: createAppBar(context),
            body: _TextInputBody(title, hint, initialValue)));
  }
}

class _TextInputBody extends StatelessWidget {

  final TextEditingController _controller;
  final String title;
  final String? hint;

  _TextInputBody(this.title, this.hint, String? initialValue)
      : _controller = TextEditingController(text: initialValue ?? "");

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: largeSpace,
          ),
          Padding(
            padding: EdgeInsets.only(left: largeSpace),
            child: Text(title,
                textAlign: TextAlign.start, style: Theme.of(context).textTheme.headline5),
          ),
          SizedBox(
            height: largeSpace,
          ),
          Expanded(
              child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: largeSpace),
                child: TextFormField(
                    controller: _controller,
                    autofocus: true,
                    minLines: 1,
                    maxLines: 99,
                    decoration: createInputDecoration(hint: this.hint),
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.newline
              ),
            ),
          ))),
          SizedBox(
            height: largeSpace,
          ),
          Padding(
            padding: EdgeInsets.all(largeSpace),
            child: AppButton.primary(
                onClick: onValidate, label: S.of(context).actionOk),
          )
        ],
    );
  }

  onValidate(BuildContext context) {
    Navigator.of(context).pop(_controller.text);
  }
}
