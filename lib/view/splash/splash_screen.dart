

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/service/controller/firebase_auth_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  // ignore: unused_field
  final FirebaseAuthController _firebaseAuthController =
      Get.put(FirebaseAuthController());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("SPLASH SCREEN"),),);
  }
}