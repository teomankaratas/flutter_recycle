import 'package:flutter/material.dart';


class EmailTextField extends StatelessWidget {
  const EmailTextField(
      {Key? key,
      required this.prefixIcon,
      required this.labelText,
      required this.textEditingController,
      required this.text})
      : super(key: key);
  final Icon prefixIcon;
  final String labelText;
  final TextEditingController textEditingController;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(
        suffixIcon: text.isNotEmpty
            ? IconButton(
                icon: const Icon(Icons.cancel_sharp),
                onPressed: () {
                  textEditingController.clear();
                },
              )
            : null,
        prefixIcon: prefixIcon,
        labelText: labelText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }
}
