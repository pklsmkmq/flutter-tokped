import 'package:get/get.dart';
import 'dart:developer';

class LoginScreenController extends GetxController {
  var eye = false.obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  changeEye() {
    log(eye.toString());
    eye.toggle();
    log(eye.toString());
  }
}
