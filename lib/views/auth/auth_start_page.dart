import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../common/style/sizes.dart';
import 'auth_start_state.dart';
import 'create/create_account_page.dart';
import 'signIn/sign_in_page.dart';

class AuthStartPage extends StatelessWidget {
  static const String routeName = "auth";

  final bool startWithCreate;

  AuthStartPage(this.startWithCreate);

  static Route route({bool startWithCreate = false}) {
    return MaterialPageRoute(
        builder: (_) => AuthStartPage(startWithCreate),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => AuthStartState(startWithCreate),
        child: SafeArea(
            child: Scaffold(
                body: Padding(
          padding: EdgeInsets.only(top: largeSpace),
          child: _AuthStartBody(),
        ))));
  }
}

class _AuthStartBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthStartState>();

    if (state.currentPage == AuthCurrentPage.login) {
      return SignInView();
    } else if (state.currentPage == AuthCurrentPage.create) {
      return CreateAccountView();
    }
    throw Exception("Should have a page corresponding to ${state.currentPage}");
  }
}