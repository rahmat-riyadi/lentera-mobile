import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseController extends GetxController with SingleGetTickerProviderMixin {
  late AnimationController courseAnimation;
  late Animation<Offset> courseTween = Tween(
    begin: Offset(0,1), end: Offset.zero
  ).animate(CurvedAnimation(parent: courseAnimation, curve: Curves.ease));

  @override
  void onInit() {
    courseAnimation = AnimationController(
      vsync: this, duration: Duration(milliseconds: 1000),
    );
    
    courseAnimation.forward();
    super.onInit();
  }

  @override
  void onClose() {
    courseAnimation.dispose();
    super.onClose();
  }
}

class CourseLesson extends GetxController with SingleGetTickerProviderMixin {

  late AnimationController courseLesson;
  late Animation<double> lessonTween = Tween<double>(
    begin: 0, end: 1
  ).animate(CurvedAnimation(parent: courseLesson, curve: Curves.easeInOutCubic));
  

  @override
  void onInit() {
    courseLesson = AnimationController(
      vsync: this, duration: Duration(milliseconds: 1700),
    );
    update();
    courseLesson.forward();
    super.onInit();
  }

  @override
  void onClose() {
    courseLesson.dispose();
    super.onClose();
  }


}

class NoteAnimation extends GetxController with SingleGetTickerProviderMixin {

  

}