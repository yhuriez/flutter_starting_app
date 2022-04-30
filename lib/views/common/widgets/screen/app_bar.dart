import 'package:flutter/material.dart';

import '../../style/colors.dart';

AppBar createAppBar(BuildContext context,
    {String? title, Color? color, Color? iconColor, List<Widget>? actions, Widget? leading}) =>
    AppBar(
      elevation: 0,
      centerTitle: true,
      leading: leading,
      backgroundColor: color ?? Colors.transparent,
      title: (title != null) ? Text(title, style: Theme.of(context).textTheme.headline6) : SizedBox.shrink(),
      actions: actions ?? [],
      iconTheme: (iconColor != null)
          ? IconThemeData(color: iconColor)
          : IconThemeData(color: themeTextColor),
      actionsIconTheme: (iconColor != null)
          ? IconThemeData(color: iconColor)
          : IconThemeData(color: themeTextColor),
    );
