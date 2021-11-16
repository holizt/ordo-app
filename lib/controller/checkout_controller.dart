import 'package:get/get.dart';

class CheckoutController extends GetxController {
  var result = 0.obs;
  var isActive = false.obs;

  void increment() {
    result++;
  }

  void dicrement() {
    if (result.value != 0) {
      result--;
    } else {
      result.value = 0;
    }
  }

  dynamic get activateNote => (isActive.value == false)
      ? isActive.value = true
      : isActive.value = false;
}
