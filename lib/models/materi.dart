import 'package:cloud_firestore/cloud_firestore.dart';

class Materi {

  String? judulMateri, tugas , batasWaktu, link;
  var index;
  bool? absen;
  List<bool>listAbsen = [];
  List<Materi> materi = [];
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  List<String> listMateri = [];

  Materi({
    this.judulMateri,
    this.tugas,
    this.absen,
    this.index,
    this.link
  });


  Future<List<Materi>> getLearningMaterial(data, index) async {
    CollectionReference courses = firestore.collection('users').doc(data).collection('Courses');

    courses.doc().get().then((matakuli) {
      for(int i = 0; i < matakuli[index]['pertemuan'].length; i++){
        materi.add(
          Materi(
            judulMateri: matakuli[index]['pertemuan'][i]['materi'],
            absen: matakuli[index]['pertemuan'][i]['absen'],
            tugas: matakuli[index]['pertemuan'][i]['tugas'],
          )
        );
      }
      
    });

    return materi;
    
  }

  Future<QuerySnapshot<Object?>> getCourseData(var argument){

    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference data = firestore.collection('users').doc(argument).collection('Courses');

    return data.get();
  }

  

  

}