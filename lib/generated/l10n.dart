// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `PLEASE RENAME ME !`
  String get appName {
    return Intl.message(
      'PLEASE RENAME ME !',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Create your account`
  String get profile_create_title {
    return Intl.message(
      'Create your account',
      name: 'profile_create_title',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get profile_create_name_hint {
    return Intl.message(
      'Name',
      name: 'profile_create_name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get profile_create_email_hint {
    return Intl.message(
      'Email',
      name: 'profile_create_email_hint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get profile_create_password_hint {
    return Intl.message(
      'Password',
      name: 'profile_create_password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get profile_create_password_confirm_hint {
    return Intl.message(
      'Confirm password',
      name: 'profile_create_password_confirm_hint',
      desc: '',
      args: [],
    );
  }

  /// `Create my account`
  String get profile_create_confirm_button {
    return Intl.message(
      'Create my account',
      name: 'profile_create_confirm_button',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account ?`
  String get profile_create_to_login_label {
    return Intl.message(
      'Already have an account ?',
      name: 'profile_create_to_login_label',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get profile_create_to_login_button {
    return Intl.message(
      'Log in',
      name: 'profile_create_to_login_button',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get login_title {
    return Intl.message(
      'Log in',
      name: 'login_title',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get login_email_label {
    return Intl.message(
      'Email',
      name: 'login_email_label',
      desc: '',
      args: [],
    );
  }

  /// `My email`
  String get login_email_hint {
    return Intl.message(
      'My email',
      name: 'login_email_hint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get login_password_label {
    return Intl.message(
      'Password',
      name: 'login_password_label',
      desc: '',
      args: [],
    );
  }

  /// `My password`
  String get login_password_hint {
    return Intl.message(
      'My password',
      name: 'login_password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get login_connect_button {
    return Intl.message(
      'Log in',
      name: 'login_connect_button',
      desc: '',
      args: [],
    );
  }

  /// `No account ?`
  String get login_to_create_account_label {
    return Intl.message(
      'No account ?',
      name: 'login_to_create_account_label',
      desc: '',
      args: [],
    );
  }

  /// `Create an account`
  String get login_to_create_account_button {
    return Intl.message(
      'Create an account',
      name: 'login_to_create_account_button',
      desc: '',
      args: [],
    );
  }

  /// `Lost password ?`
  String get login_lost_password_button {
    return Intl.message(
      'Lost password ?',
      name: 'login_lost_password_button',
      desc: '',
      args: [],
    );
  }

  /// `Please indicate your email.`
  String get login_error_empty_email {
    return Intl.message(
      'Please indicate your email.',
      name: 'login_error_empty_email',
      desc: '',
      args: [],
    );
  }

  /// `Please indicate a valid email.`
  String get login_error_invalid_email {
    return Intl.message(
      'Please indicate a valid email.',
      name: 'login_error_invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `Please indicate your password.`
  String get login_error_empty_password {
    return Intl.message(
      'Please indicate your password.',
      name: 'login_error_empty_password',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get actionYes {
    return Intl.message(
      'Yes',
      name: 'actionYes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get actionNo {
    return Intl.message(
      'No',
      name: 'actionNo',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get actionOk {
    return Intl.message(
      'Ok',
      name: 'actionOk',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get actionCancel {
    return Intl.message(
      'Cancel',
      name: 'actionCancel',
      desc: '',
      args: [],
    );
  }

  /// `Les mot de passe fournis ne correspondent pas.`
  String get error_password_not_matching {
    return Intl.message(
      'Les mot de passe fournis ne correspondent pas.',
      name: 'error_password_not_matching',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
