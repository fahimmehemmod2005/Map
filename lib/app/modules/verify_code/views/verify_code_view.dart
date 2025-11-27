import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:map/app/modules/verify_code/widgets/pin_code_text_field/pin_code_text_field.dart';
import 'package:map/app/modules/verify_code/controllers/otp_resend_controller.dart';
import 'package:map/app/routes/app_pages.dart';
import '../../../../common/custom_padding/padding.dart';
import '../../../../common/custom_scaffold/scaffold.dart';
import '../../../../common/widget/custom_botton/custom_elevated_button.dart';
import '../../../../utils/pictures/icons/icons.dart';
import '../../../../utils/pictures/images/images.dart';
import '../../../../utils/styles/styles.dart';
import '../../../../utils/text/text.dart';
import '../controllers/verify_code_controller.dart';
import '../widgets/otp_resend_code/otp_resen_code.dart';

class VerifyCodeView extends GetView<VerifyCodeController> {
  const VerifyCodeView({super.key});
  @override
  Widget build(BuildContext context) {
    final OtpResendController otpController = Get.find<OtpResendController>();

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
                UText.otpTitle,
                style: UTextStyles.title24_600w(color: Color(0xff000000))
              ),

              SizedBox(height: 20.h),

              //_________________subTitle___________________

              Text(
                textAlign: TextAlign.center,
                UText.otpSubTitle,
                style: UTextStyles.title14_400w(color: Color(0xff333333)),
              ),

              //_______________Email_______________

              Text(
                textAlign: TextAlign.center,
                UText.otpEmailText,
                style: UTextStyles.title14_600w(color: Color(0xff000000)),
              ),

              SizedBox(height: 35.h),

              //_______________OTP Verification Field____________________

              CustomPinCodeTextField(),

              SizedBox(height: 30.h),

              //___________________ Don't get code? ________________________

              Text(
                  UText.otpReceive,
                  style:  UTextStyles.title14_400w(color: Color(0xff333333))),

              SizedBox(height: 5.h),

              //__________________ OTP Resend code___________________

              OtpResendCode(
                  otpController: otpController
              ),

              SizedBox(height: 35.h),

              //________________Send Button___________________

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 65.0),
                child: CustomElevatedButton(
                    text: UText.otpVerifyButtonText,
                    textStyle: UTextStyles.title17_500w(color: Color(0xffFFFFFF)),
                    onPressed: (){Get.toNamed(Routes.RESET_PASSWORD);}
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}