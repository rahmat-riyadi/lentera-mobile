import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lentera_mobile/controllers/note_controller.dart';
import 'package:lentera_mobile/pages/note_field.dart';
import 'package:lentera_mobile/pages/show_note.dart';
import 'package:lentera_mobile/routes/routes_name.dart';
import 'package:lentera_mobile/ui_need/note_container.dart';

class NotePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final note = Get.put(NoteController());
    int id = 0;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        // onPressed: () => Get.toNamed(MyRoutes.note),
        onPressed: () { 
          Get.to(NoteField(), arguments: id);
          id++;
        },
        child: Icon(Icons.add, color: Color(0xFF34792C)),
        backgroundColor: Colors.white,
        elevation: 8,
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: GetBuilder<NoteController>(
        init: NoteController(),
        builder: (_) {
          return Container(
            padding: EdgeInsets.all(20),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: note.jumlahNote,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => Get.to(ShowNote(), arguments: index),
                child: noteContainer(context, index)
              )
            ),
          );
        },
      ),
    );
  }
}
