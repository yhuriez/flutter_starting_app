# flutter_starting_app

Template app to bootstrap a Flutter app.

## Getting Started

This project is a starting point for a Flutter application.

## Assets

The `assets` directory houses images, fonts, and any other files you want to
include with your application.

The `assets/images` directory can be used for [resolution-aware
images](https://flutter.dev/docs/development/ui/assets-and-images#resolution-aware).

## Localisation

This project uses "flutter-intl" plugin for Android Studio or VS Code, please install it using the documentation below :
https://plugins.jetbrains.com/plugin/13666-flutter-intl

For VS Code :
https://marketplace.visualstudio.com/items?itemName=localizely.flutter-intl

Note : this plugin is used instead of the standard method (see https://docs.flutter.dev/development/accessibility-and-localization/internationalization#loading-and-retrieving-localized-values) as it allows dynamic updates (when you write your wording in the desired file, it is immediatly available in the app through `S.of(context).MY_WORDING`)
