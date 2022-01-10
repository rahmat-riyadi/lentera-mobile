import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lentera_mobile/controllers/animation_controller.dart';
import 'package:lentera_mobile/controllers/attendance_controller.dart';
import 'package:lentera_mobile/models/materi.dart';
import 'package:lentera_mobile/routes/routes_name.dart';

class CourseItem extends StatelessWidget {

  var context, index;
  CourseItem(this.context, this.index);


  @override
  Widget build(BuildContext context) {

    final materi = Get.put(Materi());
 
    return FutureBuilder<QuerySnapshot<Object?>>(
      future: materi.getCourseData(Get.arguments[0]!),
      builder: (context, snapshot) {

        var item = snapshot.data!.docs;
        var detail = (((item[Get.arguments[1]].data()! as Map<String,dynamic>)['pertemuan'])as List<dynamic>)[index]!['materi']!;
        var task = (((item[Get.arguments[1]].data()! as Map<String,dynamic>)['pertemuan'])as List<dynamic>)[index]!['tugas']!;

        return (detail != null) ? Container( 
          margin: EdgeInsets.only(top: 20),
          height: MediaQuery.of(context).size.height * 0.15,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          decoration: BoxDecoration(
            color: Color(0xFF339928),
            borderRadius: BorderRadius.circular(12)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pertemuan " + (index+1).toString(),
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color(0xFFEFEFEF)
                ),
              ),
              Spacer(flex: 1),
              Text(
                detail.toString(),
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFEFEFEF)
                ),
              ),
              Spacer(flex: 3),
              CourseItemAction(task)
            ],
          ),
        ) : Text('fafad');
      }
    );
  }
}

class CourseItemAction extends StatelessWidget {

  var task;
  CourseItemAction(this.task);

  @override
  Widget build(BuildContext context) {
    return (task != null) ? Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FlatButton.icon(
          materialTapTargetSize: MaterialTapTargetSize.padded,
          textColor: Color(0xFFEFEFEF),
          icon: Icon(
            Icons.note_add, size: 17, color: Color(0xFFEFEFEF),
          ),
          label: Text(
            "Tugas", style: TextStyle(
              fontSize: 14
            ),
          ),
          onPressed: () => Get.toNamed(MyRoutes.task, arguments: task)
        ),
        FlatButton.icon(
          textColor: Color(0xFFEFEFEF),
          icon: Icon(
            Icons.person, size: 17, color: Color(0xFFEFEFEF),
          ),
          label: Text(
            "Absen", style: TextStyle(
              fontSize: 14
            ),
          ),
          onPressed: () => Get.bottomSheet(
            Container(
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(child: Attendance()),
            )
          ),
        ),
      ]
    ) : Text('text');
  }
}

