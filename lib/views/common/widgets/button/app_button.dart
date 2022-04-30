import 'package:flutter/material.dart';
import 'package:flutter_starting_app/views/common/style/colors.dart';

import '../../style/input_styles.dart';
import '../../style/sizes.dart';

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
  final double? height;
  final bool withBottomGradient;

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
        this.withBottomGradient = true,
        this.height,
      this.loading = false})
      : super(key: key);

  factory AppButton.primary(
      {Key? key,
      required Function(BuildContext) onClick,
      required String label,
      bool loading = false,
      Widget? leading,
      Widget? trailing}) {
    return AppButton(
      onClick: onClick,
      loading: loading,
      label: label,
      backgroundColor: themeAccentColor,
      textColor: themeTextColor,
      leading: leading,
      trailing: trailing,
    );
  }

  factory AppButton.secondary(
      {Key? key,
        required Function(BuildContext) onClick,
        required String label,
        bool loading = false,
        bool withBorder = true,
        Widget? leading,
        Widget? trailing}) {
    return AppButton(
      onClick: onClick,
      label: label,
      loading: loading,
      backgroundColor: themeBackgroundColor,
      textColor: themeAccentColor,
      borderColor: (withBorder) ? themeAccentColor : null,
      leading: leading,
      trailing: trailing,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: largeSpace),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(themeDefaultRadius),
            border: Border.all(color: borderColor ?? backgroundColor ?? Colors.transparent),
            color: backgroundColor ?? themeAccentColor
        ),
        child: InkWell(
          onTap: () {
            onClick(context);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: baseSpace),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[Expanded(child: Center(child: _text(context)))],
            ),
          ),
        ),
      ),
    );
  }

  Widget _text(BuildContext context) {
    final color = this.textColor ?? Theme.of(context).textTheme.bodyText2?.color ?? Colors.black;

    return SizedBox(
      height: height ?? 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leading != null) this.leading!,
          (loading)
              ? CircularProgressIndicator(
                  color: color,
                )
              : Text(label,
                  style: this.textStyle?.copyWith(color: color) ??
                      Theme.of(context).textTheme.button?.copyWith(color: color),
                  textAlign: TextAlign.center),
          if (trailing != null) this.trailing!
        ],
      ),
    );
  }
}
