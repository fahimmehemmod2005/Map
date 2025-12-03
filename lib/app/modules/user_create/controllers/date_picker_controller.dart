import 'package:get/get.dart';

class DatePickerController extends GetxController {
  Rx<DateTime?> selectedDate = Rx<DateTime?>(null);

  String formatDate(DateTime? date){
    if (date == null) return "";
    return "${date.day}/${date.month}/${date.year}";
  }
}
