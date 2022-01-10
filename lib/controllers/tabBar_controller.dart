import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabBarController extends GetxController with SingleGetTickerProviderMixin {
  
  late TabController tabController;
  int currentIndex = 0;

  @override
  void onInit() {
    tabController = TabController(
      length: 3, vsync: this
    );
    update();
    super.onInit();
  }

  changeIndex(index){
    currentIndex = index;
    update();
  }

}

class BottomBarController extends GetxController with SingleGetTickerProviderMixin {
  int currentIndex = 0;

  changeIndex(index) {
    currentIndex = index;
    update();
  }
}