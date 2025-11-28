import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:map/app/routes/app_pages.dart';

import '../../../../common/custom_padding/padding.dart';
import '../../../../common/custom_scaffold/scaffold.dart';
import '../../../../common/widget/custom_botton/custom_elevated_button.dart';
import '../../../../common/widget/custom_text_form_field/custom_textfield.dart';
import '../../../../utils/pictures/icons/icons.dart';
import '../../../../utils/pictures/images/images.dart';
import '../../../../utils/styles/styles.dart';
import '../../../../utils/text/text.dart';
import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  const ResetPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScaffold(
        imagePath: UImages.scaffoldImageSecond,
        child: SingleChildScrollView(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 72.h),

              //___________back Button_______________

              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => Get.back(),
                  child: Image.asset(
                      UIcons.backButton,
                      height: 48,
                      width: 48
                  ),
                ),
              ),

              SizedBox(height: 10.h),

              //_________________Title________________

              Text(
                UText.resetPasswordTitle,
                style: UTextStyles.title22_600w(color: Color(0xff000000)),
              ),

              SizedBox(height: 45.h),

              //__________________ New Pass field & confirm pass field _________________

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [

                    //________________new pass field_________________

                    CustomTextFormField(
                      hintText: UText.resetNewPassFieldHintText,
                      hintStyle: UTextStyles.title12_400w(color: Color(0xffACACAC)),
                    ),

                    SizedBox(height: 15.h),

                    //______________________retype pass field_____________________

                    CustomTextFormField(
                      hintText: UText.resetRetypePassFieldHintText,
                      hintStyle: UTextStyles.title12_400w(color: Color(0xffACACAC)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40.h),

              //________________Send Button___________________

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: CustomElevatedButton(
                    text: UText.resetSaveButtonText,
                    textStyle: UTextStyles.title17_500w(color: Color(0xffFFFFFF)),
                    onPressed: () => Get.toNamed(Routes.LOGIN)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
