import 'package:get/get.dart';

class CountNumber extends GetxController {
  var number = 0.obs;

  void increment() {
    number = number++;
  }

  void decrease() {
    if(number>0) {
      number = number--;
    }
  }

  void reset() {
    number.value = 0;update();
  }
}

class CountNumber2 extends GetxController {
  var number = 0.obs;

  void increment() {
    number = number++;
  }

  void decrease() {
    if(number>0) {
      number = number--;
    }
  }

  void reset() {
    number.value = 0;update();
  }
}