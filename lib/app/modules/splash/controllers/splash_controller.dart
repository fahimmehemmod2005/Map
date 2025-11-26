import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  var progress = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    jumpToNextScreen();
  }

  void jumpToNextScreen() async {
    //  loading progress
    for (int i = 0; i <= 100; i++) {
      await Future.delayed(Duration(milliseconds: 30));
      progress.value = i / 100;

      // Navigate when complete
      if (i == 100) {
        await Future.delayed(Duration(milliseconds: 200));
        Get.offAllNamed(Routes.LOGIN);
      }
    }
  }
}