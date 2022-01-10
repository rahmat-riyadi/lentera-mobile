import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lentera_mobile/controllers/note_controller.dart';

class NoteField extends StatelessWidget {

  TextEditingController judulController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final note = Get.put(NoteController());

    return Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              note.addNote(judulController.text, deskripsiController.text, Get.arguments);
              Get.back();
            },
            icon: Icon(Icons.save), color: Color(0xFF34792C),
          )
        ],
        backgroundColor: Color(0xFFEFEFEF),
        centerTitle: true,
        title: Text("Catatan", style: TextStyle(
          color: Color(0xFF34792C)
        )),
        leading: Icon(Icons.arrow_back, color: Color(0xFF34792C)),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: judulController,
              decoration: InputDecoration(
                hintText: 'Judul', hintStyle: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 25, color: Colors.black.withOpacity(0.23)
                )
              ),
            ),
            TextField(
              controller: deskripsiController,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.newline,
              decoration: InputDecoration(
                hintText: 'Catatan', border: InputBorder.none, 
              )
            )
          ],
        ),
      ),
    );
  }
}


class ShowNoteField extends StatelessWidget {

  TextEditingController judulController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final note = Get.put(NoteController());

    return Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              note.addNote(judulController.text, deskripsiController.text, Get.arguments);
              Get.back();
            },
            icon: Icon(Icons.save), color: Color(0xFF34792C),
          )
        ],
        backgroundColor: Color(0xFFEFEFEF),
        centerTitle: true,
        title: Text("Catatan", style: TextStyle(
          color: Color(0xFF34792C)
        )),
        leading: Icon(Icons.arrow_back, color: Color(0xFF34792C)),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: judulController,
              decoration: InputDecoration(
                hintText: 'Judul', hintStyle: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 25, color: Colors.black.withOpacity(0.23)
                )
              ),
            ),
            TextField(
              controller: deskripsiController,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.newline,
              decoration: InputDecoration(
                hintText: 'Catatan', border: InputBorder.none, 
              )
            )
          ],
        ),
      ),
    );
  }
}