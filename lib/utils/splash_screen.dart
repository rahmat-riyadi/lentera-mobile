import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff197449), Color(0xff3D7B22)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0, 0.8]
            )
          ),
          child: Center(
            child: Image.asset('assets/images/uin_launchh.png'),
          ),
        ),
      ),
    );
  }
}