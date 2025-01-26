import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedDate = DateTime.now().obs;
  var age = ''.obs;

  void calculateAge() {
    final today = DateTime.now();
    int years = today.year - selectedDate.value.year;
    int months = today.month - selectedDate.value.month;
    int days = today.day - selectedDate.value.day;

    if (days < 0) {
      months -= 1;
      days += DateTime(today.year, today.month, 0).day;
    }
    if (months < 0) {
      years -= 1;
      months += 12;
    }

    age.value = "$years years, $months months, $days days";
  }
}