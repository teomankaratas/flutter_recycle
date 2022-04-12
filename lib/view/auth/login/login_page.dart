import 'package:flutter/material.dart';
import 'package:flutter_recycle/theme/color_constants.dart';
import 'package:flutter_recycle/view/auth/controllers/auth_controller.dart';
import 'package:get/get.dart';

import 'widgets/email_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final AuthTextEditingController _authTextEditingController =
      Get.put(AuthTextEditingController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
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
            "Sign in with your account",
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: ColorConstants.jaguar,
                ),
          ),
          Obx(
            () => EmailTextField(
              text: _authTextEditingController.emailTextfieldString.value,
              prefixIcon: const Icon(Icons.email),
              labelText: "E-mail",
              textEditingController:
                  _authTextEditingController.emailFieldController,
            ),
          ),
          const TextField(),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "LOGIN",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: ColorConstants.jaguar),
            ),
          ),
          Text(
            "Forgot your password? Reset here",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: ColorConstants.jaguar),
          ),
          Text(
            "OR SIGN IN WITH",
            style: Theme.of(context).textTheme.headline5!.copyWith(
                color: ColorConstants.jaguar, fontWeight: FontWeight.w400),
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
}
