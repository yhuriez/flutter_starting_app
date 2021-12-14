

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppProviderInitializer extends StatelessWidget {
  final Widget child;

  const AppProviderInitializer({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //   providers: [
    //     // ChangeNotifierProvider(create: (_) => MyState(),)
    //   ],
    //   child: child,
    // );
    return child;
  }
}
