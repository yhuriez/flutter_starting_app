// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "actionCancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "actionNo": MessageLookupByLibrary.simpleMessage("No"),
        "actionOk": MessageLookupByLibrary.simpleMessage("Ok"),
        "actionYes": MessageLookupByLibrary.simpleMessage("Yes"),
        "appName": MessageLookupByLibrary.simpleMessage("PLEASE RENAME ME !"),
        "error_password_not_matching": MessageLookupByLibrary.simpleMessage(
            "Les mot de passe fournis ne correspondent pas."),
        "login_connect_button": MessageLookupByLibrary.simpleMessage("Log in"),
        "login_email_hint": MessageLookupByLibrary.simpleMessage("My email"),
        "login_email_label": MessageLookupByLibrary.simpleMessage("Email"),
        "login_error_empty_email":
            MessageLookupByLibrary.simpleMessage("Please indicate your email."),
        "login_error_empty_password": MessageLookupByLibrary.simpleMessage(
            "Please indicate your password."),
        "login_error_invalid_email": MessageLookupByLibrary.simpleMessage(
            "Please indicate a valid email."),
        "login_lost_password_button":
            MessageLookupByLibrary.simpleMessage("Lost password ?"),
        "login_password_hint":
            MessageLookupByLibrary.simpleMessage("My password"),
        "login_password_label":
            MessageLookupByLibrary.simpleMessage("Password"),
        "login_title": MessageLookupByLibrary.simpleMessage("Log in"),
        "login_to_create_account_button":
            MessageLookupByLibrary.simpleMessage("Create an account"),
        "login_to_create_account_label":
            MessageLookupByLibrary.simpleMessage("No account ?"),
        "profile_create_confirm_button":
            MessageLookupByLibrary.simpleMessage("Create my account"),
        "profile_create_email_hint":
            MessageLookupByLibrary.simpleMessage("Email"),
        "profile_create_name_hint":
            MessageLookupByLibrary.simpleMessage("Name"),
        "profile_create_password_confirm_hint":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "profile_create_password_hint":
            MessageLookupByLibrary.simpleMessage("Password"),
        "profile_create_title":
            MessageLookupByLibrary.simpleMessage("Create your account"),
        "profile_create_to_login_button":
            MessageLookupByLibrary.simpleMessage("Log in"),
        "profile_create_to_login_label":
            MessageLookupByLibrary.simpleMessage("Already have an account ?")
      };
}
