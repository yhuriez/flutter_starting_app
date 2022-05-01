import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../generated/l10n.dart';
import '../../common/style/input_styles.dart';
import '../../common/style/sizes.dart';
import '../../common/widgets/button/labeled_button.dart';
import '../../common/widgets/containers/label_container.dart';
import '../../common/widgets/state/state_error_text_view.dart';
import '../../common/widgets/state/state_validation_button.dart';
import '../../home/item_page.dart';
import '../auth_start_state.dart';
import 'create_account_state.dart';

class CreateAccountView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CreateAccountState(),
      child: CreateAccountBody(),
    );
  }
}

class CreateAccountBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingScreenInsets,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Center(
                  child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(S.of(context).profile_create_title,
                              style: Theme.of(context).textTheme.headline5),

                          SizedBox(height: bigSpace,),

                          ProfileCreateView(withDisplayName: true),

                          StateErrorTextView<CreateAccountState>(),
                        ],
                      )))),

          StateValidationButton<CreateAccountState>(
              label: S.of(context).profile_create_confirm_button,
              onPressed: onValidate),

          Padding(
            padding:  EdgeInsets.symmetric(vertical: xlargeSpace, horizontal: largeSpace),
            child: LabeledButton(
                label: S.of(context).profile_create_to_login_label,
                buttonText: S.of(context).profile_create_to_login_button,
                onPressed: onCreateAccountPressed),
          ),
        ],
      ),
    );
  }

  onValidate(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());

    final state = context.read<CreateAccountState>();
    final result = await state.validate();
    if (result == true) {
      Navigator.of(context).pushAndRemoveUntil(ItemPage.route(), (_) => false);
    }
  }

  onCreateAccountPressed(BuildContext context) {
    context.read<AuthStartState>().showLogin();
  }
}


class ProfileCreateView extends StatelessWidget {
  final bool withDisplayName;
  final bool withBorder;

  const ProfileCreateView({Key? key, this.withDisplayName = false, this.withBorder = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.read<CreateAccountState>();

    return Form(
      key: state.formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          // Email
          LabelContainer(
            label: S.of(context).profile_create_email_hint,
            child: TextFormField(
              controller: state.emailController,
              decoration: createInputDecoration(
                  hint: S.of(context).profile_create_email_hint, withBorder: withBorder),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
            ),
          ),
          SizedBox(
            height: largeSpace,
          ),

          // Password
          LabelContainer(
            label: S.of(context).profile_create_password_hint,
            child: TextFormField(
              controller: state.passwordController,
              decoration: createInputDecoration(
                  hint: S.of(context).profile_create_password_hint, withBorder: withBorder),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              textInputAction: TextInputAction.next,
            ),
          ),
          SizedBox(
            height: largeSpace,
          ),

          // Password confirmation
          LabelContainer(
            label: S.of(context).profile_create_password_confirm_hint,
            child: TextFormField(
              controller: state.passwordConfirmController,
              decoration: createInputDecoration(
                  hint: S.of(context).profile_create_password_hint, withBorder: withBorder),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              textInputAction: TextInputAction.next,
            ),
          ),

          SizedBox(
            height: xlargeSpace,
          ),
        ],
      ),
    );
  }
}