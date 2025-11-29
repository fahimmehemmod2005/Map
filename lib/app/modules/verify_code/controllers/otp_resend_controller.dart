import 'dart:async';
import 'package:get/get.dart';

class OtpResendController extends GetxController {
  final seconds = 0.obs;
  final startResend = true.obs;

  Timer? _timer;

  String format(int s) =>
      '${(s ~/ 60).toString().padLeft(2, '0')}:${(s % 60).toString().padLeft(2, '0')}';

  void start() {
    startResend(false);
    seconds(30);

    _timer?.cancel();
    _timer = Timer.periodic(Duration(seconds: 1), (t) {
      if (seconds() == 0) {
        t.cancel();
        startResend(true);
      } else {
        seconds(seconds() - 1);
      }
    });
  }

  void resend() => start();

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
