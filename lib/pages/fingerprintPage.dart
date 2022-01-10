import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../ui_need/login_background.dart';
class FingerPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundLogin().backgroundLogin(context),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svg/fingerprint.svg',
                    color: Color(0xffffffff),
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Letakkan Jari Anda Pada Sensor",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xffffffff)
                    ),
                  )
                ],
              ),
            ),
          ),
        ] 
      ),
    );
  }
}