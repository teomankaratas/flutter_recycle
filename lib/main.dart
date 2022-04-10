import 'package:flutter/material.dart';
import 'package:flutter_recycle/theme/app_theme.dart';
import 'package:flutter_recycle/theme/theme_storage.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'view/auth/auth_page.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeStorage().getThemeMode(),
      home: const AuthPage(),
    );
  }
}
