

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common/utils/device_utils.dart';
import '../domain/configuration/injection.dart';
import '../generated/l10n.dart';
import 'common/style/themes.dart';
import 'home/item_page.dart';

class App extends StatelessWidget {
  final GlobalKey<NavigatorState> _navigatorKey;

  const App(this._navigatorKey,) : super();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: sl.allReady(),
        builder: (context, snapshot) {
          if(!snapshot.hasData) {
            return Container();
          }

          return ScreenUtilInit(
            designSize: getDesignSize(),
            builder: (_) => MaterialApp(
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
              },),
          );
        });
  }

  Size getDesignSize() {
    final mode = getDeviceType();
    if (mode == DeviceType.TABLET) {
      return Size(600, 900);
    }
    return Size(400, 600);
  }

  Route getInitialRoute() {
    return ItemPage.route();
  }
}