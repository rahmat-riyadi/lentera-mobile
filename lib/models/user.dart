import 'package:get/get.dart';
import 'package:lentera_mobile/models/data.dart';
import 'package:lentera_mobile/models/mataKuliah.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class User extends GetxController {

  String? nama = 'Rahmat Riyadi Syam', nim = '60200120116', kelas = 'D', jurusan = 'Teknik Informatika', image,
  fakultas = 'Sains dan Teknologi', email = 'rahmatriyadi171102@gmail.com', noHp = '087819582058';
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  List<MataKuliah> matkul = [
  MataKuliah(
    namaMatkul: 'Basis Data',
    dosen: 'dia',
    materi: materiBasisdata
  ),
  MataKuliah(
    namaMatkul: 'Organisasi dan Arsitektur Komputer',
    dosen: 'aku',
    materi: materiOrganisasidanArsitekturKomputer
  ),
  MataKuliah(
    namaMatkul: 'Pemrograman Web',
    dosen: 'kamu',
    materi: materiPemrogramanWeb
  ),
  MataKuliah(
    namaMatkul: 'Statistika dan Probabilitas',
    dosen: 'dia',
    materi: materiStatistikadanProbabilitas
  ),
  MataKuliah(
    namaMatkul: 'Struktur Data',
    dosen: 'aku',
    materi: materiStrukturData
  ),
  MataKuliah(
    namaMatkul: 'Sistem Tertanam',
    dosen: 'kamu',
    materi: materiStatistikadanProbabilitas
  ),
  MataKuliah(
    namaMatkul: 'Pemrograman Berorientasi Objek',
    dosen: 'dia',
    materi: materiPemrogramanBerorientasiObjek
  )
];


  // User({
  //   this.nama,
  //   this.kelas,
  //   this.jurusan,
  //   this.fakultas,
  //   this.nim,
  //   this.data 
  // });

  Future<QuerySnapshot<Object?>>getData(){
    CollectionReference user = firestore.collection('users');
    return user.get();
  }

}
