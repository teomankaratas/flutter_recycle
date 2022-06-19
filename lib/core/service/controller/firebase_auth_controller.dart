import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_recycle/view/auth/login/login_page.dart';
import 'package:flutter_recycle/view/auth/signup/signup_page.dart';
import 'package:flutter_recycle/view/home/home_page.dart';
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
      // this is solely for the Firebase Auth Exception
      // for example : password did not match
      print(e.message);
      // Get.snackbar("Error", e.message!);
      Get.snackbar(
        "Error",
        e.message!,
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      // this is temporary. you can handle different kinds of activities
      //such as dialogue to indicate what's wrong
      print(e.toString());
    }
  }

  void loginWithEmailAndPassword(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      // this is solely for the Firebase Auth Exception
      // for example : password did not match
      print(e.message);
    } catch (e) {
      print(e.toString());
    }
  }

  void signOut() {
    try {
      auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }


}