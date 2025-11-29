import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:map/app/modules/main_screen/views/widgets/custom_svg/custom_svg.dart';
import 'package:map/common/custom_padding/padding.dart';
import 'package:map/common/custom_scaffold/scaffold.dart';
import 'package:map/utils/pictures/icons/icons.dart';
import 'package:map/utils/pictures/images/images.dart';

import '../controllers/user_create_controller.dart';

class UserCreateView extends GetView<UserCreateController> {
  const UserCreateView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScaffold(imagePath: UImages.scaffoldImageSecond, child:SingleChildScrollView(
        padding: UPadding.screenPadding,
        child: Column(
          children: [

            SizedBox(height: 70.h),

            //___________________back button__________________

            Align(
              alignment: Alignment.topLeft, child: GestureDetector(
                onTap: () => Get.back(), child: Image.asset(
                    UIcons.backButton, height: 48, width: 48),),),


          ],
        ),
      )),
    );
  }
}
