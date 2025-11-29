import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:map/app/routes/app_pages.dart';
import 'package:map/common/widget/custom_botton/custom_elevated_button.dart';
import 'package:map/common/widget/custom_social_button/custom_socail_button.dart';
import 'package:map/common/widget/or_divider/or_divider.dart';
import 'package:map/common/widget/rich_text/custom_richtext.dart';
import 'package:map/common/widget/custom_text_form_field/custom_textfield.dart';
import 'package:map/utils/pictures/images/images.dart';
import '../../../../common/custom_scaffold/scaffold.dart';
import '../../../../common/widget/custom_container_bar/custom_container_bar.dart';
import '../../../../utils/pictures/icons/icons.dart';
import '../../../../utils/styles/styles.dart';
import '../../../../utils/text/text.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScaffold(
        imagePath: UImages.scaffoldImage,
        child: Column(
          children: [
            SizedBox(height: 127.h),

            //______________App Logo____________________

            Image.asset(
                UIcons.appLogo, height: 71.h, width: 253.w),

            SizedBox(height: 43.h),

            //______________Custom Container___________________

            CustomContainerBar(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 34),
                child: Column(
                  children: [
                    SizedBox(height: 36.h),

                    //__________________Login Title__________________

                    Text(
                      UText.loginTitle,
                      style: UTextStyles.title25_600w(color: Color(0xff0F9BE9)),
                    ),

                    //__________________Login SubTitle__________________

                    Text(
                      UText.loginSubTitle,
                      style: UTextStyles.title17_400w(color: Color(0xff000000)),
                    ),

                    SizedBox(height: 30.h),

                    //___________________Email Input Field________________

                    CustomTextFormField(
                      hintText: UText.loginEmailFieldHintText,
                      hintStyle: UTextStyles.title12_400w(
                        color: Color(0xff98847C),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(6.5),
                        child: SvgPicture.asset(
                          UIcons.loginEmailFieldEmailIcon,
                        ),
                      ),
                    ),

                    SizedBox(height: 20.h),

                    //___________________Password Input Field________________

                    CustomTextFormField(
                      obscureText: true,
                      hintText: UText.loginPassFieldHintText,
                      hintStyle: UTextStyles.title12_400w(
                        color: Color(0xff98847C),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(6.5),
                        child: SvgPicture.asset(
                          UIcons.loginPasswordFieldLockIcon,
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(6.5),
                        child: SvgPicture.asset(
                          UIcons.loginPasswordFieldVisibilityOffIcon,
                        ),
                      ),
                    ),

                    SizedBox(height: 20.h),

                    //___________________Forgot Button__________________

                    Align(
                      alignment: AlignmentGeometry.centerRight,
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(Routes.FORGOT);
                        },
                        child: Text(
                          UText.loginForgotButtonText,
                          style: UTextStyles.title14_500w(
                            color: Color(0xff0F9BE9),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 30.h),

                    //_______________Login Elevated button____________________

                    CustomElevatedButton(
                      rowidth: 10,
                      onPressed: () {
                        Get.toNamed(Routes.MAIN_SCREEN);
                      },
                      text: UText.loginButtonText,
                      textStyle: UTextStyles.title17_500w(color: Colors.white),
                      imagePath: UIcons.forwardArrow,
                    ),

                    SizedBox(height: 20.h),

                    //___________________Or Divider_____________________

                    divider(
                      lineColor: Colors.grey.shade400,
                       thickness: 1,
                       spacing: 14.0,
                       child: Text(
                        UText.loginOrDividerText,
                        style: UTextStyles.title12_400w(
                          color: Color(0xff20222C),
                        ),
                      ),
                    ),

                    SizedBox(height: 20.h),

                    //_______________Social Buttons____________________

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomSocialButton(
                          imagePath: UIcons.facebookIcon,
                          onPressed: () {},
                        ),
                        SizedBox(width: 12.w),
                        CustomSocialButton(
                          imagePath: UIcons.googleIcon,
                          onPressed: () {},
                        ),
                        SizedBox(width: 12.w),
                        CustomSocialButton(
                          imagePath: UIcons.appleIcon,
                          onPressed: () {},
                        ),
                      ],
                    ),

                    SizedBox(height: 40.h),

                    //_______________Custom Rich Text____________________

                    CustomRichText(
                      textOne: UText.loginRichFirstText,
                      textOneStyle: UTextStyles.title12_400w(
                        color: Color(0xff20222C),
                      ),
                      textTwo: UText.loginRichSecondText,
                      textTwoStyle: UTextStyles.title14_500w(
                        color: Color(0xffFC5C00),
                      ),
                      onTap: () => Get.toNamed(Routes.CREATE_ACCOUNT),
                    ),
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
