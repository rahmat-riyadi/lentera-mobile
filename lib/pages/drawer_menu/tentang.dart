import 'package:flutter/material.dart';
import 'package:lentera_mobile/pages/drawer.dart';
import 'package:lentera_mobile/ui_need/app_bar.dart';
import 'package:lottie/lottie.dart';

class Tentang extends StatelessWidget {
  const Tentang({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: customBar,
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Lottie.asset('assets/lottie/computer.json'),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lentera", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF34792C)
                      )),
                      Text(
                        "Lentera merupakan sebuah e-learning, kalau anda anak UIN pasti udah tau, klo bukan buat apa download ini aplikasi njir...",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          height: 1.4
                        ),
                      )
                    ]
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lentera", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF34792C)
                      )),
                      Text(
                        "Lentera merupakan sebuah e-learning, kalau anda anak UIN pasti udah tau, klo bukan buat apa download ini aplikasi njir...",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          height: 1.4
                        ),
                      )
                    ]
                  ),
                ),
                SizedBox(width: 5),
                 Expanded(
                  child: Lottie.asset('assets/lottie/mobile.json'),
                ),
              ],
            ),
            Text("contact developer : ", style: TextStyle(color: Color(0xFF34792C))),
            FlatButton.icon(
              icon: Icon(Icons.email),
              label: Text("rahmatriyadi171102@gmail.com"),
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}