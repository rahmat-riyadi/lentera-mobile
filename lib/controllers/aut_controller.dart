import 'package:get/get.dart';

class AutController extends GetxController {

  var isSwitch = true;

  changeValue(var newValue){
    isSwitch = newValue;
    update();
  }

}