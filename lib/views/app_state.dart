

import 'package:flutter/material.dart';
import 'package:flutter_starting_app/domain/usecases/auth/current_user.dart';

import '../domain/configuration/injection.dart';

class AppState extends ChangeNotifier {

  final CurrentUserUseCase _currentUserUseCase = sl();

  String? connectedUserId;
  // TODO Add some state that is global to the app here

  AppState(){
    init();
  }

  init() async {
    // TODO Init state with default values here or with use cases / repositories
    connectedUserId = _currentUserUseCase.execute()?.uid;
    notifyListeners();
  }

  update() async {
    // TODO Update state (using use case, repositories etc.) here
    notifyListeners();
  }
}