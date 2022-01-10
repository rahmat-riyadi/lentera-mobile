import 'package:get/get.dart';
import 'package:lentera_mobile/pages/home/homePage.dart';
import 'package:lentera_mobile/pages/home/homePage2.dart';

class IndexModel extends GetxController {

  var selectedValue;
  var useIndex, indexTitle;

  changeValue(value){
    selectedValue = value;
    update();
  }

  changeIndex(String val){
    if(val == 'model 1'){
      indexTitle = 'Model 1';
      useIndex = HomePage();
    } else {
      indexTitle = 'Model 2';
      useIndex = HomePageNew();
    }
  }

  @override
  void onInit() {
    super.onInit();
    useIndex = HomePage();
  }

}
