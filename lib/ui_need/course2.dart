import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

class CoursesNew extends StatelessWidget {

  var index;
  List<Color> colors = [Color(0xFFE36C1E), Color(0xFF2E2D6F), Color(0xFF367D58), Color(0xFFA52828)];

  CoursesNew(this.index);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colors[index % 4],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          // BoxShadow(
          //   color: Colors.black.withOpacity(0.3),
          //   offset: Offset(0, 1.5),
          //   blurRadius: 2,
          //   spreadRadius: 1
          // )
        ]
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
             children: [
              Text(
                "Kelas D",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white
                ),
              ),
               Text(
                 "pemrograman Terstruktur",
                 style: TextStyle(
                   fontSize: 16,
                   fontWeight: FontWeight.w500,
                   color: Colors.white
                 ),
                )
             ], 
            ),
          ),
        ],
      )
    );
  }
}