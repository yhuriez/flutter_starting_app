import 'package:flutter/material.dart';
import '../style/colors.dart';
import '../style/input_styles.dart';

class AppButton extends StatelessWidget {
  final String label;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final Widget? leading;
  final Widget? trailing;
  final TextStyle? textStyle;
  final Function(BuildContext) onClick;
  final bool loading;

  const AppButton(
      {Key? key,
      required this.onClick,
      required this.label,
      this.backgroundColor,
      this.textColor,
      this.borderColor,
      this.leading,
      this.trailing,
      this.textStyle,
      this.loading = false})
      : super(key: key);

  factory AppButton.primary(
      {Key? key,
      required Function(BuildContext) onClick,
      required String label,
      Widget? leading,
      Widget? trailing}) {
    return AppButton(
      onClick: onClick,
      label: label,
      backgroundColor: themeAccentColor,
      textColor: Colors.white,
      leading: leading,
      trailing: trailing,
    );
  }

  factory AppButton.secondary(
      {Key? key,
      required Function(BuildContext) onClick,
      required String label,
      Widget? leading,
      Widget? trailing}) {
    return AppButton(
      onClick: onClick,
      label: label,
      backgroundColor: Colors.transparent,
      textColor: themeAccentColor,
      leading: leading,
      trailing: trailing,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(themeDefaultRadius),
          border: Border.all(color: borderColor ?? backgroundColor ?? Colors.transparent),
          color: backgroundColor ?? themeAccentColor),
      child: InkWell(
        onTap: () {
          onClick(context);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[Expanded(child: Center(child: _text(context)))],
          ),
        ),
      ),
    );
  }

  Widget _text(BuildContext context) {
    final color = this.textColor ?? Theme.of(context).textTheme.bodyText2?.color ?? Colors.black;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (leading != null) this.leading!,
        Text(label,
            style: this.textStyle?.copyWith(color: color) ??
                Theme.of(context).textTheme.button?.copyWith(color: color),
            textAlign: TextAlign.center),
        if (trailing != null) this.trailing!
      ],
    );
  }
}
