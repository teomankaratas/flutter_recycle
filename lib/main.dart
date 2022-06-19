import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recycle/view/splash/splash_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/theme/app_theme.dart';
import 'app/theme/theme_storage.dart';
import 'firebase_options.dart';


void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      home: SplashScreen(),
    );
  }
}
