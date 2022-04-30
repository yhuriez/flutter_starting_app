

import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {

  String? connectedUserId;
  // TODO Add some state that is global to the app here

  AppState(){
    init();
  }

  init() async {
    // TODO Init state with default values here or with use cases / repositories
    notifyListeners();
  }

  update() async {
    // TODO Update state (using use case, repositories etc.) here
    notifyListeners();
  }
}