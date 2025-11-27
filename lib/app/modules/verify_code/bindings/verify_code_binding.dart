import 'package:get/get.dart';

import '../controllers/verify_code_controller.dart';
import '../controllers/otp_resend_controller.dart';

class VerifyCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifyCodeController>(
      () => VerifyCodeController(),
    );
    Get.lazyPut<OtpResendController>(
        () => OtpResendController(),
    );
  }
}
