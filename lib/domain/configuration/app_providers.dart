

import 'package:flutter/material.dart';
import 'package:flutter_starting_app/views/app_state.dart';
import 'package:provider/provider.dart';

///
/// A class regrouping all states we want to make global to the application
///
class AppProviders extends StatelessWidget {
  final Widget child;

  const AppProviders({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppState(),)
      ],
      child: child,
    );
  }
}
