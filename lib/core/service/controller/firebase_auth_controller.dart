import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import '../../../view/home/home_page.dart';
import 'package:get/get.dart';

import '../../../view/auth/auth_page.dart';

class FirebaseAuthController extends GetxController{


static FirebaseAuthController authInstance = Get.find();
late Rx<User?> firebaseUser;

FirebaseAuth auth = FirebaseAuth.instance;

@override
  void onReady() {
    super.onReady();
    firebaseUser= Rx<User?>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, _setInitialScreen);

  }
  _setInitialScreen (User? user){
    if (user !=null){
      Get.offAll(()=>const HomePage());
    }else {
      Get.offAll(()=>const AuthPage());
    }
  }

  void registerWithEmailAndPassword (String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Error while registering !",
        e.message!,
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      
      debugPrint(e.toString());
    }
  }

  void loginWithEmailAndPassword(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Error while logging in !",
        e.message!,
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void signOut() {
    try {
      auth.signOut();
    } catch (e) {
      debugPrint(e.toString());
    }
  }


}