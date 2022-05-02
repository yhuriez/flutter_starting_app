
import 'package:flutter/material.dart';

import '../../../domain/configuration/injection.dart';
import '../../../domain/usecases/auth/sign_in.dart';
import '../../common/widgets/state/state_change_notifier.dart';


class SignInState extends StateChangeNotifier {

  final SignInUseCase _signInUseCase = sl();

  final GlobalKey<FormState> formKey = GlobalKey();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<bool?> validate() async {
    if (formKey.currentState?.validate() == true) {
      return update(() async {
        await _signInUseCase.execute(
            email: emailController.text.trim(),
            password: passwordController.text.trim());
        return true;
      });
    }
    return false;
  }
}
