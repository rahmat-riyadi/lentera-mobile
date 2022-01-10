import 'package:get/get.dart';

class NotifController extends GetxController {

  var isSwitch = false;

  changeValue(var newValue) {
    isSwitch = newValue;
    update();
  }

}