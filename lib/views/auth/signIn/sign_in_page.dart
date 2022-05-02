import 'package:flutter/material.dart';
import 'package:flutter_starting_app/views/home/item_page.dart';
import 'package:provider/provider.dart';

import '../../../common/utils/email_validation.dart';
import '../../../generated/l10n.dart';
import '../../common/style/input_styles.dart';
import '../../common/style/sizes.dart';
import '../../common/widgets/button/labeled_button.dart';
import '../../common/widgets/containers/label_container.dart';
import '../../common/widgets/state/state_error_text_view.dart';
import '../../common/widgets/state/state_validation_button.dart';
import '../auth_start_state.dart';
import 'sign_in_state.dart';

class SignInView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => SignInState(),
        child: SignInBody());
  }
}

class SignInBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.read<SignInState>();

    return Form(
      key: state.formKey,
      child: Padding(
        padding: paddingScreenInsets,
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Text(S.of(context).login_title,
                          style: Theme.of(context).textTheme.headline5),

                      SizedBox(height: bigSpace,),

                      // Email
                      LabelContainer(
                        label: S.of(context).login_email_hint,
                        child: TextFormField(
                            controller: state.emailController,
                            decoration: createInputDecoration(hint: S.of(context).login_email_hint, withBorder: false),
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            validator: (value) => emailValidator(context, value)),
                      ),

                      SizedBox(
                        height: xlargeSpace,
                      ),

                      // Password
                      LabelContainer(
                        label: S.of(context).login_password_hint,
                        child: TextFormField(
                          controller: state.passwordController,
                          decoration: createInputDecoration(hint: S.of(context).login_password_hint, withBorder: false),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          textInputAction: TextInputAction.done,
                          onFieldSubmitted: (_) => onValidate(context),
                        ),
                      ),

                      SizedBox(height: baseSpace,),

                      StateErrorTextView<SignInState>(),
                    ],
                  ),
                ),
              ),
            ),

            // Confirm button
            StateValidationButton<SignInState>(
              label: S.of(context).login_connect_button,
              onPressed: onValidate,
            ),

              Padding(
                padding: EdgeInsets.all(largeSpace),
                child: LabeledButton(
                    label: S.of(context).login_to_create_account_label,
                    buttonText: S.of(context).login_to_create_account_button,
                    onPressed: onLoginPressed),
              ),

            SizedBox(height: largeSpace,)
          ],
        ),
      ),
    );
  }

  String? emailValidator(BuildContext context, String? value) {
    if(value == null || value.isEmpty) {
      return S.of(context).login_error_empty_email;
    }
    if (!validateEmail(value)) {
      return S.of(context).login_error_invalid_email;
    }
    return null;
  }

  onValidate(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());

    final state = context.read<SignInState>();
    final result = await state.validate();
    if (result == true) {
      Navigator.of(context).pushAndRemoveUntil(ItemPage.route(), (_) => false);
    }
  }

  onLoginPressed(BuildContext context) {
    context.read<AuthStartState>().showCreateAccount();
  }
}