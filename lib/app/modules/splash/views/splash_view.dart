import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:map/common/custom_scaffold/scaffold.dart';
import 'package:map/utils/pictures/icons/icons.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScaffold(
        child: Column(
          children: [

            SizedBox(height: 353.h),

            //____________________App Logo_________________________

            SvgPicture.asset(
                UIcons.appLogo,
            height: 71.h,
              width: 253.w ,
            ),

        SizedBox(height: 305.h),

        //__________________________Loading Indicator_____________________

        Obx(
                () => Container(
          width: 192.w,
          height: 15.h,
          decoration: BoxDecoration(
            color: Color(0xffFFE4D4),
            borderRadius: BorderRadius.circular(30.r),
            border: Border.all(color: Colors.white,width: 3.w)
          ),
          child: Stack(
            children: [
              Container(
                width: 192.w * controller.progress.value,
                height: 15.h,
                decoration: BoxDecoration(
                  color: Color(0xffFC9300),
                  borderRadius: BorderRadius.circular(30.r),
                ),
              ),
            ],
          ),
        )
        ),
          ],
        ),
      ),
    );
  }
}
