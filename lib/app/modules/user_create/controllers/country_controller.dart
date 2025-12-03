import 'package:get/get.dart';

class CountryController extends GetxController {
  var selectedCountry = ''.obs;
  var selectedFlag = ''.obs;

  void setCountry(String country) {
    selectedCountry.value = country;
  }

  void setFlag(String flag) {
    selectedFlag.value = flag;
  }
}
