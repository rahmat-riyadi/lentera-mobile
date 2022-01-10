import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lentera_mobile/controllers/animation_controller.dart';
import 'package:lentera_mobile/models/mataKuliah.dart';
import 'package:lentera_mobile/models/user.dart';
import 'package:lentera_mobile/routes/routes_name.dart';
import 'package:lentera_mobile/ui_need/course.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final mataKuliah = Get.put(MataKuliah());
    final student = Get.put(User());
    final courseController = Get.put(CourseController());
    

    return Container(
      color: Color(0xFF197447),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Selamat Datang', style: TextStyle(
                      color: Colors.white
                    )),
                    SizedBox(height: 5),
                    Text('Rahmat Riyadi Syam', style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.white, fontSize: 18
                    ))
                  ],
                ),
                SizedBox(height: 22),
                Container(
                  height: MediaQuery.of(context).size.height * 0.17,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: CircularPercentIndicator(
                            footer: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text("Absensi"),
                            ),
                            radius: 90,
                            backgroundWidth: 10,
                            circularStrokeCap: CircularStrokeCap.round,
                            backgroundColor: Color(0xFFF2F4F6),
                            center: Text(
                              "40%",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                              ),
                            ),
                            percent: 0.4,
                            lineWidth: 10,
                            progressColor: Colors.amber,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: CircularPercentIndicator(
                            footer: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text("Tugas"),
                            ),
                            radius: 90,
                            backgroundWidth: 10,
                            backgroundColor: Color(0xFFF2F4F6),
                            circularStrokeCap: CircularStrokeCap.round,
                            center: Text(
                              "20%",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                              ),
                            ),
                            percent: 0.20,
                            lineWidth: 10,
                            progressColor: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(1, 1),
            child: FutureBuilder(
              future: mataKuliah.getCoursesList(Get.arguments),
              builder: (context, snapshot) {
                return Container(
                  padding: EdgeInsets.only(top: 20),
                  height: MediaQuery.of(context).size.height * 0.48,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(25))
                  ),
                  child: GetBuilder<CourseController>(
                    init: CourseController(),
                    builder: (_) {
                      return AnimatedBuilder(
                        animation: courseController.courseAnimation,
                        builder: (context, child) => SlideTransition(
                          position: courseController.courseTween, child: child,
                        ),
                        child: ListView.builder(
                          itemCount: student.matkul.length,
                          itemBuilder: (context, index) => Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20
                            ),
                            child: GestureDetector(
                              child: courses(index, Get.arguments),
                              onTap: () {
                                Get.toNamed(MyRoutes.classPage, arguments: [Get.arguments.toString(),index]);
                              },
                            )
                          ),
                        ),
                      );
                    },
                  ),
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}
