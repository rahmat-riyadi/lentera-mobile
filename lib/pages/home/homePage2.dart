import 'package:flutter/material.dart';
import 'package:lentera_mobile/ui_need/course.dart';
import 'package:lentera_mobile/ui_need/course2.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePageNew extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF339928),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            color: Color(0xFF339928),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircularPercentIndicator(
                  header: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Absensi",
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  radius: 80,
                  backgroundWidth: 8,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Icon(
                    Icons.people_alt, color: Color(0xFFEFEFEF), size: 40
                  ),
                  percent: 0.7,
                  lineWidth: 4,
                  progressColor: Colors.green,
                ),
                CircularPercentIndicator(
                  header: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Tugas",
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  radius: 80,
                  backgroundWidth: 8,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Text(
                    "20%",
                    style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w500, color: Color(0xFFEFEFEF)
                    ),
                  ),
                  percent: 0.2,
                  lineWidth: 4
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(1,1),
            child: Container(
              padding: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                color: Color(0xFFEFEFEF),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25)
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.38,
                    child: GridView.builder(
                      itemCount: 8,
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) => CoursesNew(index)
                    )
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}