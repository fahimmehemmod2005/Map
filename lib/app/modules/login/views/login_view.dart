import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:map/app/modules/login/views/widget/custom_elevated_button.dart';
import 'package:map/common/widget/custom_richtext.dart';
import 'package:map/common/widget/custom_textfield.dart';
import '../../../../common/custom_scaffold/scaffold.dart';
import '../../../../common/widget/custom_container_bar.dart';
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
        child: Column(
          children: [
            SizedBox(height: 127.h),

            //______________App Logo____________________

            Image.asset(
                UIcons.loginAppLogo,
                height: 71.h, width: 253.w
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

                    Text(
                      UText.loginTitle,
                      style: UTextStyles.title25_600w(color: Color(0xff0F9BE9)),
                    ),

                    SizedBox(height: 26.h),

                    //__________________Login SubTitle__________________

                    Text(
                      UText.loginSubTitle,
                      style: UTextStyles.title17_400w(color: Color(0xff000000)),
                    ),

                    SizedBox(height: 38.h),

                    //___________________Email Input Field________________

                    CustomTextFormField(
                      hintText: UText.loginEmailFieldHintText,
                      hintStyle: UTextStyles.title12_400w(
                        color: Color(0xff98847C),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(6.5),
                        child: SvgPicture.asset(UIcons.loginEmailFieldEmailIcon),
                      ),
                    ),

                    SizedBox(height: 21.h),

                    //___________________Password Input Field________________

                    CustomTextFormField(
                      obscureText: true,
                      hintText: UText.loginPassFieldHintText,
                      hintStyle: UTextStyles.title12_400w(
                        color: Color(0xff98847C),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(6.5),
                        child: SvgPicture.asset(UIcons.loginPasswordFieldLockIcon),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(6.5),
                        child: SvgPicture.asset(UIcons.loginPasswordFieldVisibilityOffIcon),
                      ),
                    ),

                    SizedBox(height: 24.h),
                    
                    //___________________Forgot Button__________________
                    
                    Align(
                      alignment: AlignmentGeometry.centerRight,
                      child: GestureDetector(
                        onTap: (){},
                        child: Text(UText.loginForgotButtonText,
                        style: UTextStyles.title14_500w(color: Color(0xff0F9BE9)),
                        ),
                      ),
                    ),

                    SizedBox(height: 43.h),

                    //_______________Login Elevated button____________________

                    CustomElevatedButton(
                      onPressed: (){},
                      text: UText.loginButtonText,
                      textStyle: UTextStyles.title17_500w(color: Colors.white),
                      icon: SvgPicture.asset(UIcons.loginButtonRightArrowIcon),
                    ),

                    SizedBox(height: 27.h),

                    //_______________Custom Rich Text____________________

                    CustomRichText(
                        textOne: UText.loginRichFirstText,
                        textOneStyle: UTextStyles.title12_400w(color: Color(0xff20222C)),
                        textTwo: UText.loginRichSecondText,
                      textTwoStyle: UTextStyles.title14_500w(color: Color(0xffFC5C00)),
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
