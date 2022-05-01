import 'package:flutter/material.dart';


class AuthStartState with ChangeNotifier {

  AuthCurrentPage _currentPage = AuthCurrentPage.login;

  AuthStartState(bool startWithCreate){
    _currentPage = (startWithCreate) ? AuthCurrentPage.create : AuthCurrentPage.login;
  }

  AuthCurrentPage get currentPage => _currentPage;


  showLogin() => _updateCurrentPage(AuthCurrentPage.login);

  showCreateAccount() => _updateCurrentPage(AuthCurrentPage.create);

  _updateCurrentPage(AuthCurrentPage newPage) {
    _currentPage = newPage;
    notifyListeners();
  }

}

enum AuthCurrentPage {
  login,
  create
}