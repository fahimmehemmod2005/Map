import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:map/common/custom_padding/padding.dart';
import 'package:map/common/custom_scaffold/scaffold.dart';
import 'package:map/common/widget/Custom_Container_Bar.dart';
import 'package:map/utils/pictures/icons/icons.dart';
import 'package:map/utils/styles/styles.dart';
import 'package:map/utils/text/text.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScaffold(
        child: Column(
          children: [

            SizedBox(height: 127.h),

            //______________App Logo____________________

            Image.asset(
              UIcons.loginAppLogo,
              height: 71.h,
              width: 253.w,
            ),

            SizedBox(height: 43.h),

            //______________Custom Container___________________

            CustomContainerBar(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 34),
                child: Column(
                  children: [

                    SizedBox(height: 36.h),

                    //__________________Login Title__________________

                    Text(UText.loginTitle,
                      style: UTextStyles.title25_600w(color: Color(0xff0F9BE9)),),

                    SizedBox(height: 26.h),

                    //__________________Login SubTitle__________________

                    Text(UText.loginSubTitle,
                      style: UTextStyles.title17_400w(color: Color(0xff000000)),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
