import 'package:get/get.dart';

class CountCotroller extends GetxController {
  var number = 0.obs;
  var number2 = 0.obs;
  
  void increment() {
    number = number++;
    update();
  }

  void decrease() {
    if(number>0) {
      number = number--;
      update();
    }
  }

  void reset() {
    number.value = 0;
    update();
  }

  void increment2() {
    number2 = number2++;
    update();
  }

  void decrease2() {
    if(number2>0) {
      number2 = number2--;
      update();
    }
  }

  void reset2() {
    number2.value = 0;
    update();
  }
}
