import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../models/exceptions/app_exception.dart';
import '../../style/colors.dart';
import '../../style/sizes.dart';
import 'state_change_notifier.dart';

class StateErrorTextView<STATE extends StateChangeNotifier> extends StatelessWidget {

  final TextAlign? textAlign;
  final bool withEmptySpace;

  const StateErrorTextView({Key? key, this.textAlign, this.withEmptySpace = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final error = context.select<STATE, AppException?>((state) => state.error);

    if(error == null) return SizedBox(height: (withEmptySpace) ? bigSpace : 0);

    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: bigSpace),
      child: Padding(
        padding:  EdgeInsets.all(largeSpace),
        child: Text(error.getWording(context),
            textAlign: textAlign,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(color: themeErrorTextColor)),
      ),
    );
  }
}
