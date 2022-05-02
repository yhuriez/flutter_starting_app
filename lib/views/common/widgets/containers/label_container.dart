import 'package:flutter/material.dart';

import '../../style/sizes.dart';

class LabelContainer extends StatelessWidget {
  final String label;
  final Widget child;

  const LabelContainer({Key? key, required this.label, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.only(left: smallSpace),
          child: Text(label, style: Theme.of(context).textTheme.bodyText1),
        ),
        SizedBox(height: baseSpace,),
        child
      ],
    );
  }
}
