import 'package:get/get.dart';
import 'package:map/app/modules/user_create/controllers/country_controller.dart';

import '../controllers/date_picker_controller.dart';
import '../controllers/user_create_controller.dart';

class UserCreateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserCreateController>(
      () => UserCreateController(),
    );
    Get.lazyPut<DatePickerController>(
        () => DatePickerController(),
    );
    Get.lazyPut<CountryController>(
        () => CountryController(),
    );
  }
}
