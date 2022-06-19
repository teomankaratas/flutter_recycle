import 'package:flutter/material.dart';

import 'package:flutter_recycle/view/auth/controllers/auth_controller.dart';
import 'package:flutter_recycle/view/auth/login/login_page.dart';
import 'package:flutter_recycle/view/auth/signup/signup_page.dart';
import 'package:get/get.dart';

import '../../app/theme/color_constants.dart';
import 'widgets/top_shaped_container.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MyTabController _myTabController = Get.put(MyTabController());
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: Get.height * 0.1,
              ),
              Image.asset(
                "assets/icons/logo_icon.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              Stack(
                children: [
                  TopShapedContainer(
                      height: Get.height * 0.765,
                      width: Get.width,
                      color: ColorConstants.ultramarineBlue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: Get.width * 0.7,
                            child: TabBar(
                              labelStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                              ),
                              indicatorWeight: 0.0001,
                              tabs: _myTabController.authTabs,
                              controller: _myTabController.tabController,
                            ),
                          ),
                        ],
                      )),
                  Positioned(
                    top: Get.height * 0.07,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: TopShapedContainer(
                      height: Get.height * 0.64,
                      width: Get.width,
                      color: ColorConstants.whiteSmoke,
                      child: TabBarView(
                        controller: _myTabController.tabController,
                        children: [
                          LoginPage(),
                          SignUpPage(),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
