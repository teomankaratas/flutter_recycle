import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField(
      {Key? key,
      required this.prefixIcon,
      required this.labelText,
      required this.textEditingController,
      required this.isPasswordVisible})
      : super(key: key);
  final Icon prefixIcon;
  final String labelText;
  final TextEditingController textEditingController;
  final RxBool isPasswordVisible;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextFormField(
        obscureText: isPasswordVisible.value,
        controller: textEditingController,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: isPasswordVisible.value?  const Icon(Icons.remove_red_eye_outlined): const Icon(Icons.lock_reset),
            onPressed: () {
              isPasswordVisible.value = !isPasswordVisible.value;
            },
          ),
          prefixIcon: prefixIcon,
          labelText: labelText,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
      ),
    );
  }
}
