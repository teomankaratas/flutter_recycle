import 'package:flutter/material.dart';
import '../../../core/service/controller/firebase_auth_controller.dart';

import '../controllers/auth_controller.dart';
import 'package:get/get.dart';

import '../../../app/theme/color_constants.dart';
import '../widgets/email_textfield.dart';
import '../widgets/password_textfield.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  

  final AuthTextEditingController _authTextEditingController =
      Get.put(AuthTextEditingController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Welcome back!",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: ColorConstants.jaguar),
          ),
          Text(
            "Sign up",
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: ColorConstants.jaguar,
                ),
          ),
          buildEmailTextField(),
          buildPasswordTextField(),
          Center(
            child: SizedBox(
              width: Get.width * 0.8,
              height: Get.height * 0.08,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: ColorConstants.ultramarineBlue,
                ),
                onPressed: () {
                  FirebaseAuthController.authInstance.registerWithEmailAndPassword(
                      _authTextEditingController.emailFieldController.text
                          .trim(),
                      _authTextEditingController.passwordFieldController.text
                          .trim());
                },
                child: Text(
                  "SIGN-UP",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: ColorConstants.whiteSmoke),
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              "Forgot your password? Reset here",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Center(
            child: Text(
              "OR CREATE AN ACCOUNT WITH",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/icons/google_icon.png"),
              Image.asset("assets/icons/facebook_icon.png"),
              Image.asset("assets/icons/twitter_icon.png"),
            ],
          )
        ],
      ),
    );
  }

  PasswordTextField buildPasswordTextField() {
    return PasswordTextField(
        prefixIcon: const Icon(Icons.lock),
        labelText: "Password",
        textEditingController:
            _authTextEditingController.passwordFieldController,
        isPasswordVisible: _authTextEditingController.isPasswordVisible);
  }

  EmailTextField buildEmailTextField() {
    return EmailTextField(
      text: _authTextEditingController.emailTextfieldString,
      prefixIcon: const Icon(Icons.email),
      labelText: "E-mail",
      textEditingController: _authTextEditingController.emailFieldController,
    );
  }
}
