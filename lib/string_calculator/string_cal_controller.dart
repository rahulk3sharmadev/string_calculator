import 'package:get/get.dart';

class StringController extends GetxController {
  var result = 0.obs;

  void calculate(String input) {
    int sum = 0;
    for (var char in input.split('')) {
      if (RegExp(r'[0-9]').hasMatch(char)) {
        sum += int.parse(char);
      }
    }
    result.value = sum;
  }
}
