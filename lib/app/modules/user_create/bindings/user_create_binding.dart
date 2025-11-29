import 'package:get/get.dart';

import '../controllers/user_create_controller.dart';

class UserCreateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserCreateController>(
      () => UserCreateController(),
    );
  }
}
