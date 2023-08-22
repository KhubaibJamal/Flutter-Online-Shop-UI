import 'package:flutter/material.dart';
import 'package:shop_app/components/no_account_text.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constant.dart';
import '../../../size_config.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  List<String> errors = [];
  String? email;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onSaved: (newValue) {
              email = newValue!;
            },
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: "Email",
              hintText: "Enter your Email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(
                svgIcon: "assets/icons/Mail.svg",
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(error: errors),
          SizedBox(height: SizeConfig.screenHeight! * 0.1),
          DefaultButton(
            text: "Continue",
            press: () {},
          ),
          SizedBox(height: SizeConfig.screenHeight! * 0.1),
          const NoAccountText()
        ],
      ),
    );
  }
}
