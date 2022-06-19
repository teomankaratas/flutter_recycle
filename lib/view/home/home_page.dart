import 'package:flutter/material.dart';
import '../../core/service/controller/firebase_auth_controller.dart';

import '../../app/theme/theme_storage.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                ThemeStorage().changeThemeMode();
              },
              child: const Text(
                "Switch Theme",
              ),
            ),
            MaterialButton(
              onPressed: () {
                FirebaseAuthController.authInstance.signOut();
              },
              child: const Text(
                "Log Out",
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
