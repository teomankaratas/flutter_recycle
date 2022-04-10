import 'package:flutter/material.dart';
import 'package:flutter_recycle/theme/theme_storage.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            ThemeStorage().changeThemeMode();
          },
          child: const Text(
            "Switch Theme",
          ),
        ),
      ),
    );
  }
}
