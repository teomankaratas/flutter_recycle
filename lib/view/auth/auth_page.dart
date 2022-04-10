import 'package:flutter/material.dart';
import 'package:flutter_recycle/theme/color_constants.dart';
import 'package:get/get.dart';

import 'widgets/top_shaped_container.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: Get.size.height * 0.01,
            ),
            Image.asset(
              "assets/icons/logo_icon.png",
              fit: BoxFit.cover,
            ),
            Stack(
              children: [
                TopShapedContainer(
                  height: Get.height * 0.7,
                  width: Get.width,
                  color: ColorConstants.ultramarineBlue,
                  child: Row(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text("LOGIN",style: TextStyle(color: ColorConstants.whiteSmoke,fontSize: 24,)),
                      Text("SIGN-UP",style: TextStyle(color: ColorConstants.whiteSmoke,fontSize: 24,)),
                    ],
                  ),
                ),
                Positioned(
                    top: Get.height * 0.1,
                    child: TopShapedContainer(
                      height: Get.height,
                      width: Get.width,
                      color: ColorConstants.whiteSmoke,
                      child: Column(),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
