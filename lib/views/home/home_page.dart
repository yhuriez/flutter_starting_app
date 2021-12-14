import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_state.dart';


class HomePage extends StatelessWidget {

  static const String routeName = "";

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => HomePage(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => HomeState(),
        child: SafeArea(
            child: Scaffold(
                body: _HomeBody())));
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Hello world !"));
  }
}