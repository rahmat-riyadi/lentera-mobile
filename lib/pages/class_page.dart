import 'package:animations/animations.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lentera_mobile/controllers/animation_controller.dart';
import 'package:lentera_mobile/controllers/attendance_controller.dart';
import 'package:lentera_mobile/models/data.dart';
import 'package:lentera_mobile/models/materi.dart';
import 'package:lentera_mobile/models/user.dart';
import 'package:lentera_mobile/routes/routes_name.dart';

class Class extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final materi = Get.put(Materi());
    
    return Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      appBar: AppBar(
        backgroundColor: Color(0xFFEFEFEF),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Kursus",
          style: TextStyle(color: Color(0xFF34792C)),
        ),
        leading: IconButton(
          icon : Icon(Icons.arrow_back_rounded),
          color: Color(0xFF34792C),
          onPressed: () => Get.back()
        ),
      ),
      body: FutureBuilder<QuerySnapshot<Object?>>(
        future: materi.getCourseData(Get.arguments[0]),
        builder: (context, snapshot) {
          
          if(snapshot.hasError){
            return CircularProgressIndicator();
          }

          if (snapshot.connectionState == ConnectionState.done) {

            return ListView.builder(
              itemCount: kumpulanMateri[Get.arguments[1]].length,
              itemBuilder: (context, index) {
                return (snapshot.connectionState != ConnectionState.waiting || snapshot.connectionState != ConnectionState.none )
                ? pertemuanContainer(context,index) : CircularProgressIndicator();
              }
            );
          }

          return Text('loading');

        }
      ),
    );
  }
}

class NewClass extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final student = Get.find<User>();
    final courseLesson = Get.put(CourseLesson());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEFEFEF),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Kursus",
          style: TextStyle(color: Color(0xFF34792C)),
        ),
        leading: IconButton(
          icon : Icon(Icons.arrow_back_rounded),
          color: Color(0xFF34792C),
          onPressed: () => Get.back()
        ),
      ),
      body: Container(
        color: Color(0xFFEFEFEF),
        padding: EdgeInsets.symmetric(
          horizontal: 20
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            courseHeader(context, student.matkul[Get.arguments[1]].dosen, student.matkul[Get.arguments[1]].namaMatkul),
            Container(
              child: ListView.builder(
              shrinkWrap: true,
              itemCount: student.matkul[Get.arguments[1]].materi!.length,
              itemBuilder: (context, index) {
                // return (snapshot.connectionState != ConnectionState.waiting || snapshot.connectionState != ConnectionState.none )
                // ? pertemuanContainer(
                // context,
                // snapshot.matkul.docs[Get.arguments[1]]['pertemuan']?[index]?['materi']!,
                // index,
                // snapshot.matkul.docs[Get.arguments[1]]['pertemuan']?[index]?['tugas']!,
                // )
                // : CircularProgressIndicator();
                return AnimatedBuilder(
                  animation: courseLesson.courseLesson,
                  builder: (context, child) {
                    return FadeScaleTransition(
                      animation: courseLesson.lessonTween,
                      child: child
                    ); 
                  },
                  child: pertemuanContainer(context,index)
                );
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget courseHeader(context, dosen, course){

  return Container(
    margin: EdgeInsets.only(bottom: 10),
    width: MediaQuery.of(context).size.width * .5,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          course.toString(),
          style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 27
          ),
        ),
        SizedBox(height: 6),
        Text(
          dosen.toString(),
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
        )
      ],
    ),
  );
}


Widget pertemuanContainer(context, index){

  final student = Get.find<User>();

  return Container(
    height: MediaQuery.of(context).size.height * 0.15,
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
    decoration: BoxDecoration(
      color: Color(0xFF339928),
      borderRadius: BorderRadius.circular(12)
    ),
    child: Column(
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
          student.matkul[Get.arguments[1]].materi![index].judulMateri.toString(),
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFFEFEFEF)
          ),
        ),
      Spacer(flex: 3),
      courseItemAction(context, student.matkul[Get.arguments[1]].materi![index].judulMateri)
      ],
    ),
  );
}

Widget courseItemAction(context, task){
  return Row(
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
  );
}
