import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lentera_mobile/controllers/note_controller.dart';

class ShowNote extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final note = Get.put(NoteController());
    TextEditingController _judulController = TextEditingController(text: note.note[Get.arguments].judul);
    TextEditingController _deskripsiController = TextEditingController(text: note.note[Get.arguments].deskripsi);


    return Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFEFEFEF),
        centerTitle: true,
        title: Text('catatan', style: TextStyle(color: Color(0xFF34792C)),),
        leading: IconButton(
          onPressed: () => Get.back(
          ),
          icon: Icon(Icons.arrow_back, color: Color(0xFF34792C)),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _judulController,
              decoration: InputDecoration(
                hintText: 'Judul', hintStyle: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 25, color: Colors.black.withOpacity(0.23)
                )
              ),
            ),
            TextField(
              controller: _deskripsiController,
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