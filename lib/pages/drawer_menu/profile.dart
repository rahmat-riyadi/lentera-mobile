import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lentera_mobile/pages/drawer.dart';
import 'package:lentera_mobile/ui_need/app_bar.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      drawer: MyDrawer(),
      appBar: customBar,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
        children: [
          Container(
            height: height * 0.16,
            width: width * 0.95,
            child: Row(
              children: [
                ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  padding: EdgeInsets.only(top: 17),
                  width: 100,
                  height: 100,
                  color: Colors.grey[400],
                  child: Icon(Icons.person, size: 100,),
                )
            ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  height: 100,
                  width: width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rahmat Riyadi Syam",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Spacer(flex: 1,),
                      Text(
                        "60200120116"
                      ),
                      Spacer(flex: 5,),
                      GestureDetector(
                        onTap: () => print('pengaturan clicked'),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Pengaturan Profil",
                              style: TextStyle(
                                color: Color(0xFF34792C),
                                fontStyle: FontStyle.italic
                              ),
                            ),
                            SizedBox(width: 5,),
                            SvgPicture.asset(
                              'assets/svg/setting.svg', width: 15, color: Color(0xFF34792C),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(                                //================= Profil Umum =================//
            margin: EdgeInsets.only(top: 30),
            width: width * 0.95,
            height: height * 0.20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Profil Umum",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF34792C)
                  ),
                ),
                Text(
                  "Jurusan : Teknik Informatika",
                ),
                Text(
                  "Fakultas : Sains dan Teknologi",
                ),
                Text(
                  "Email : rahmatriyadi171102@gmail.com",
                ),
                Text(
                  "No. Hp : 087819582058",
                ),
              ],
            ),
          ),
          Container(                                //================= Mata Kuliah =================//
            margin: EdgeInsets.only(top: 30),
            width: width * 0.95,
            height: height * 0.35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mata Kuliah",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF34792C)
                  ),
                ),
                Text(
                  "Pemrograman Terstruktur",
                ),
                Text(
                  "Internet Of Things",
                ),
                Text(
                  "Matematika Diskrit",
                ),
                Text(
                  "Ilmu Hadis",
                ),
                Text(
                  "Etika Profesi",
                ),
                Text(
                  "Fisika",
                ),
                Text(
                  "Pendidikan Kewarganegaraan",
                ),
                Text(
                  "Elektronika Digital",
                ),
              ],
            ),
          )
        ],
       ),
      ),
    );
  }
}