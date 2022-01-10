import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AttendanceController extends GetxController {
  var selectedValue;

  changeValue(value) {
    selectedValue = value;
    update();
  }
}

class Attendance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final attendance = Get.put(AttendanceController());
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Text(
              "Hari : ", 
              style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xFF34792C)
              )
            ),
            Text(
              "Kamis 17 - 11 - 2021", 
              style: TextStyle(
                fontSize: 15
              )
            )
          ],
        ),
        Row(
          children: [
            Text(
              "Waktu : ", 
              style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xFF34792C)
              )
            ),
            Text(
              "08:00 - 09:40", 
              style: TextStyle(
                fontSize: 15
              )
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<AttendanceController>(
                builder: (_) => Radio(
                    value: 'hadir',
                    groupValue: attendance.selectedValue,
                    onChanged: (value) {
                      attendance.changeValue(value);
                    })),
            Text("hadir",style: TextStyle(fontWeight: FontWeight.w600),),
            GetBuilder<AttendanceController>(
                builder: (_) => Radio(
                      value: 'sakit',
                      groupValue: attendance.selectedValue,
                      onChanged: (value) => attendance.changeValue(value),
                    )),
            Text("sakit", style: TextStyle(fontWeight: FontWeight.w600)),
            GetBuilder<AttendanceController>(
              builder: (_) => Radio(
                  value: 'izin',
                  groupValue: attendance.selectedValue,
                  onChanged: (value) => attendance.changeValue(value),
                )
              ),
            Text("izin", style: TextStyle(fontWeight: FontWeight.w600)),
            GetBuilder<AttendanceController>(
              builder: (_) => Radio(
                value: 'alpha',
                groupValue: attendance.selectedValue,
                onChanged: (value) => attendance.changeValue(value),
              )
            ),
            Text("alpha", style: TextStyle(fontWeight: FontWeight.w600))
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.055,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF339928))
            ),
            onPressed: (){},
            child: Text("submit"),
          ),
        )
      ],
    );
  }
}
