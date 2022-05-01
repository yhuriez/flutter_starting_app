import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/sizes.dart';

class LabeledButton extends StatelessWidget {
  final String? label;
  final String buttonText;
  final Function(BuildContext) onPressed;

  const LabeledButton(
      {Key? key, this.label, required this.buttonText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if(label != null) Text(label!, style: Theme.of(context).textTheme.bodyText2),

        InkWell(
          onTap: () => onPressed(context),
          child: Padding(
            padding: EdgeInsets.all(baseSpace),
            child: Text(buttonText,  style: Theme.of(context).textTheme.bodyText2
                ?.copyWith(color: themeAccentColor, fontWeight: FontWeight.bold)),
          ),
        )
      ],
    );
  }
}
