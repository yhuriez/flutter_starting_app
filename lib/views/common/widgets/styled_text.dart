
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class HtmlStyledText extends StatelessWidget {

  final String message;
  final TextStyle? style;
  final TextAlign? textAlign;

  const HtmlStyledText(this.message, {Key? key, this.style, this.textAlign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = style ?? TextStyle();

    return StyledText(
      text: message,
      style: textStyle,
      textAlign: textAlign ?? TextAlign.left,
      tags: {
        "b": StyledTextTag(style: textStyle.copyWith(fontWeight: FontWeight.bold))
      },
    );
  }
}