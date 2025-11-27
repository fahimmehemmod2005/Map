import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../utils/text/text.dart';
import '../../controllers/otp_resend_controller.dart';

class OtpResendCode extends StatelessWidget {
  const OtpResendCode({
    super.key,
    required this.otpController,
  });

  final OtpResendController otpController;

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => GestureDetector(
        onTap: otpController.startResend.value
            ? otpController.resend
            : null,
        child: Text(
          otpController.startResend.value
              ? UText.otpResendCodeText
              :otpController.format(otpController.seconds.value),
          style: GoogleFonts.inter(
              color: Color(0xffFF5069),
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red
          ),),
      ),
    );
  }
}