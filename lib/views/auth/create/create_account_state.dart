import 'package:flutter/material.dart';
import 'package:flutter_starting_app/domain/api/requests/create_user_request.dart';
import 'package:flutter_starting_app/domain/usecases/auth/current_user.dart';

import '../../../domain/configuration/injection.dart';
import '../../../domain/usecases/auth/create_account.dart';
import '../../../models/exceptions/password_not_matching_exception.dart';
import '../../../models/user.dart';
import '../../common/widgets/state/state_change_notifier.dart';

class CreateAccountState extends StateChangeNotifier {

  final CreateAccountUseCase _createAccountUseCase = sl();
  final CurrentUserUseCase _currentUserUseCase = sl();

  final GlobalKey<FormState> formKey = GlobalKey();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController = TextEditingController();

  User? _user;

  CreateAccountState() {
    _user = _currentUserUseCase.execute();
    if (_user != null) {
      emailController.text = _user?.email ?? "";
    }
  }

  Future<bool?> validate() async {
    // Check form validators
    if (formKey.currentState?.validate() != true) {
      return false;
    }

    // Check password confirm
    String password = passwordController.text.trim();
    if (password != passwordConfirmController.text.trim()) {
      updateError(PasswordNotMatchingException());
      return false;
    }

    return update(() async {
      await _createAccountUseCase.execute(CreateUserRequest(
          email: emailController.text,
          password: passwordController.text,
        ));
      return true;
    });
  }
}
