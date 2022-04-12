import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTabController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  final List<Tab> authTabs = <Tab>[
    const Tab(
      text: "LOGIN",
    ),
    const Tab(
      text: "SIGN UP",
    ),
  ];
  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}

class AuthTextEditingController extends GetxController {
  late TextEditingController emailFieldController;
   late TextEditingController passwordFieldController ;
  RxString emailTextfieldString = ''.obs;

  @override
  void onInit() {
    emailFieldController = TextEditingController();
    passwordFieldController = TextEditingController();
    super.onInit();

    emailFieldController.addListener(() {emailTextfieldString.value=emailFieldController.text;});
  }

  @override
  void onClose() {
    emailFieldController.dispose();
    passwordFieldController.dispose();
    super.onClose();
  }
}
