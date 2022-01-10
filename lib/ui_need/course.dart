import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:get/get.dart';
import 'package:lentera_mobile/controllers/animation_controller.dart';
import 'package:lentera_mobile/models/mataKuliah.dart';
import 'package:lentera_mobile/models/materi.dart';
import 'package:lentera_mobile/models/user.dart';
import 'package:percent_indicator/percent_indicator.dart';

Widget courses(index, argument){

  final materi = Get.put(Materi());
  List<Color> colors = [Color(0xFFFC8338), Color(0xFF007CBD), Color(0xFF562B77), Color(0xFFEB0C0C), Color(0xFF31B057)];
  final student = Get.put(User());

  return FutureBuilder(
    future: materi.getCourseData(argument),
    builder: (context, snapshot) {
      return Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.10),
                blurRadius: 12,
                spreadRadius: 0,
                offset: Offset.zero
              )
            ]
          ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.16,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: colors[index % 5],
                  ),
                ),
                Expanded(
                  flex: 20,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              student.matkul[index].namaMatkul.toString(),
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Kelas " + student.kelas!.toString(),
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black
                              ),
                            ),
                          ], 
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: CircularPercentIndicator(
                            footer: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text("Absensi"),
                            ),
                            radius: 60,
                            backgroundWidth: 8,
                            circularStrokeCap: CircularStrokeCap.round,
                            backgroundColor: Color(0xFFF2F4F6),
                            center: Text(
                              "40%",
                              style: TextStyle(
                                fontSize: 14.5,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                              ),
                            ),
                            percent: 0.4,
                            lineWidth: 8,
                            progressColor: Colors.green,
                          ),
                        )
                      ],
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  );
}