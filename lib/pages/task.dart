import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Task extends StatelessWidget {
  const Task({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Opacity(
              opacity: 0.2,
              child: Icon(Icons.note_add_rounded, size: 100,)
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tugas",
                        style: TextStyle(
                          color: Color(0xFF34792C),
                          fontWeight: FontWeight.w500,
                          fontSize: 25
                        ),
                      ),
                      Text(Get.arguments.toString()),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Keterangan",
                        style: TextStyle(
                          color: Color(0xFF34792C),
                          fontWeight: FontWeight.w500,
                          fontSize: 19
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Waktu : ',
                          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
                          children: [
                            TextSpan(text: "senin 17 - 11 - 2021", style: TextStyle(fontWeight: FontWeight.normal)),
                          ]
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Batas Waktu : ',
                          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
                          children: [
                            TextSpan(text: "selasa 18 - 11 - 2021", style: TextStyle(fontWeight: FontWeight.normal)),
                          ]
                        ),
                      ),
                       RichText(
                        text: TextSpan(
                          text: 'Status : ',
                          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
                          children: [
                            TextSpan(text: "belum dikumpul", style: TextStyle(fontWeight: FontWeight.normal)),
                          ]
                        ),
                      ),
                       RichText(
                        text: TextSpan(
                          text: 'file : ',
                          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
                          children: [
                            TextSpan(text: " - ", style: TextStyle(fontWeight: FontWeight.normal)),
                          ]
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.055,
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFF339928))
                    ),
                    label: Text("Tambah Tugas"),
                    icon: Icon(Icons.add),
                    onPressed: (){},
                  )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}