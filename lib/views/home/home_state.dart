import 'package:flutter/material.dart';


class HomeState with ChangeNotifier {


  // TODO Add some state that is related to the HomePage widget here

  HomeState() {
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