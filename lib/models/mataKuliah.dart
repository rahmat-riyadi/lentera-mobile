import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:lentera_mobile/models/materi.dart';

class MataKuliah extends GetxController {

  String? namaMatkul, dosen, kelas;
  List<MataKuliah> matkul = [];
  List<Materi>? materi= [];
  get matkulLength => matkul.length;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  MataKuliah({this.dosen, this.namaMatkul, this.materi});

  Future<void> getCoursesList(data) async{
    CollectionReference courses = firestore.collection('users').doc(data).collection('Courses');

  courses.get().then((course) {
      for(int i = 0; i < course.docs.length; i++){
        var courseData = course.docs[i];
        matkul.add(
          MataKuliah(dosen: courseData['dosen'], namaMatkul: course.docs[i].id)
        );
      }
    });

    
  }
  
}