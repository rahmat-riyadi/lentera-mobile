import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lentera_mobile/controllers/note_controller.dart';

Widget noteContainer(context, index){

  List<Color> color = [Color(0xFFCA0404), Color(0xFF0F8E33), Color(0xFFF39302)];
  final note = Get.put(NoteController());
  

  return GetBuilder<NoteController>(
    builder: (controller) => Container(
      padding: EdgeInsets.symmetric(
        vertical: 10, horizontal: 20
      ),
      margin: EdgeInsets.only(bottom: 25),
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xFFFAFAFA),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 10,
            spreadRadius: -3,
            offset: Offset(1,1)
          )
        ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 15,
            decoration: BoxDecoration(
              color: color[index % 3],
              borderRadius: BorderRadius.circular(4)
            ),
          ),
          SizedBox(width: 15 ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${controller.note[index].judul}", style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 16
                ),
              ),
              SizedBox(height: 15),
              Text(
                "${controller.note[index].deskripsi}", style: TextStyle(
                  color: Color(0xFF646262), fontWeight: FontWeight.w300, fontSize: 11.5
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
          Spacer(flex: 3),
          GestureDetector(
            onTap: () => note.deleteNote(controller.note[index].id!.toInt()),
            child: Container(
              width: 30,
              height: 30,
              child: Icon(Icons.delete, size: 19),
              decoration: BoxDecoration(
                color: Color(0xFFEB0C0C), borderRadius: BorderRadius.circular(6)
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
