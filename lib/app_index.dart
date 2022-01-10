import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lentera_mobile/pages/loginPage.dart';
import 'package:lentera_mobile/routes/routes_name.dart';

class AppIndex extends StatelessWidget {
  const AppIndex({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Colors.black], begin: Alignment.topLeft, end: Alignment.bottomRight
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  padding: EdgeInsets.symmetric(
                    vertical: 0, horizontal: 0
                  ),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/hmjti.png', fit: BoxFit.contain, height: 100),
                      Text('HMS', style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white
                      ))
                    ],
                  ),
                ),
                SizedBox(height: 60),
                GestureDetector(
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      padding: EdgeInsets.symmetric(
                        vertical: 20, horizontal: 0
                      ),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/images/lenteraApp.gif', height: 60),
                          Text('Lentera', style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white, fontFamily: 'Courgette'
                          ))
                        ],
                      ),
                    ),
                  onTap: () => Get.toNamed(MyRoutes.login),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment(0,-1),
            child: Text(
              'UINAM Student App',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}