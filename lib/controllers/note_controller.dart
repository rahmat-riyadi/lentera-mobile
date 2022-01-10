import 'package:get/state_manager.dart';
import 'package:lentera_mobile/models/note_model.dart';

class NoteController extends GetxController {

  List<NoteModel> note = [
    NoteModel(judul: 'Daftar Kelompok Ilmu Hadis', deskripsi: 'Kelompok 1\nkelompok 2\nkelompok 3'),
    NoteModel(judul: 'Tugas Penting', deskripsi: 'Makalah OAK\nTugas Kelompok Fisika\n')
  ];
  int get jumlahNote => note.length;

  addNote(judul, deskripsi, id){
    note.add(
      NoteModel(judul: judul, deskripsi: deskripsi, id: id)
    );
    id++;
    update();
  }

  deleteNote(int id){
    note.removeWhere((element) => element.id == id);
    id--;
    update();
  }

  updateNote(int id, judul, deskripsi){
    NoteModel selectedNote = note.firstWhere((element) => element.id == id );
    selectedNote.judul = judul;
    selectedNote.deskripsi = deskripsi;
    update();
  }

}