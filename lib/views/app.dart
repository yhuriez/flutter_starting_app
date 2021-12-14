

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_starting_app/generated/l10n.dart';

import '../domain/configuration/injection.dart';
import 'common/style/themes.dart';
import 'home/home_page.dart';

class App extends StatelessWidget {
  final GlobalKey<NavigatorState> _navigatorKey;

  const App(this._navigatorKey,) : super();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: sl.allReady(),
        builder: (context, snapshot) {
          return MaterialApp(
            title: "RENAME ME", // TODO Change app name
            debugShowCheckedModeBanner: false,
            navigatorKey: _navigatorKey,
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            theme: initLightTheme(),
            onGenerateRoute: (_) => getInitialRoute(),
            builder: (context, child) {
              return MediaQuery(
                // Force text scale factor to avoid having unusable screen when
                // phone text configuration has big font size.
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                  child: child ?? Container());
            },);
        });
  }

  Route getInitialRoute() {
    return HomePage.route();
  }
}