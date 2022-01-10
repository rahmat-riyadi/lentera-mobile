import 'package:lentera_mobile/models/mataKuliah.dart';
import 'package:lentera_mobile/models/materi.dart';

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

List<List<Materi>> kumpulanMateri = [
  materiBasisdata,
  materiOrganisasidanArsitekturKomputer,
  materiPemrogramanWeb,
];

List<Materi> materiBasisdata = [
  Materi(
    judulMateri: 'Pengenalan Basis Data'
  ),
  Materi(
    judulMateri: 'Pengertian Sistem Basis Data'
  ),
  Materi(
    judulMateri: 'Komponen Sistem Basis Data',
    tugas: 'carilah 5 komponen sistem basis data'
  ),
  Materi(
    judulMateri: 'Bahasa Basis Data',
    link: 'www.google.com'
  ),
];

List<Materi> materiPemrogramanWeb = [
  Materi(
    judulMateri: 'Pengenalan Web'
  ),
  Materi(
    judulMateri: 'Tekonologi dasar dalam web',
    link: 'google.com'
  ),
  Materi(
    judulMateri: 'Tag dasar Html',
    tugas: 'Carilah 5 tag dasar html'
  ),
];

List<Materi> materiOrganisasidanArsitekturKomputer = [
  Materi(
    judulMateri: 'Pengenalan Web'
  ),
  Materi(
    judulMateri: 'Tekonologi dasar dalam web',
    link: 'google.com'
  ),
  Materi(
    judulMateri: 'Tag dasar Html',
    tugas: 'Carilah 5 tag dasar html'
  ),
];

List<Materi> materiStatistikadanProbabilitas = [
  Materi(
    judulMateri: 'Pengenalan Web'
  ),
  Materi(
    judulMateri: 'Tekonologi dasar dalam web',
    link: 'google.com'
  ),
  Materi(
    judulMateri: 'Tag dasar Html',
    tugas: 'Carilah 5 tag dasar html'
  ),
];


List<Materi> materiSistemTertanam = [
  Materi(
    judulMateri: 'Apa itu Sistem Tertanam ?'
  ),
  Materi(
    judulMateri: 'Sejarah Sistem Tertanam',
    link: 'google.com'
  ),
  Materi(
    judulMateri: 'Klasifikasi Sistem Tertanam',
    tugas: 'uraikan klasifikasi sistem tertanam dan kirim dalam bentuk pdf'
  ),
];


List<Materi> materiPemrogramanBerorientasiObjek = [
  Materi(
    judulMateri: 'Pengenalan Pemrograman Berorientasi Objek'
  ),
  Materi(
    judulMateri: 'Pengenalan Class',
    link: 'google.com'
  ),
  Materi(
    judulMateri: 'Pengenalan Objek',
  ),
  Materi(
    judulMateri: 'Constructor',
  ),
];

List<Materi> materiStrukturData = [
  Materi(
    judulMateri: 'Konsep Struktur Data'
  ),
  Materi(
    judulMateri: 'Sistem Bilangan',
    link: 'google.com'
  ),
  Materi(
    judulMateri: 'Representasi Data',
  ),
  Materi(
    judulMateri: 'Array Dimensi Banyak',
  ),
];