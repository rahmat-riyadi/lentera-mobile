import 'package:flutter/material.dart';

class BackgroundLogin {

  Container backgroundLogin(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Color(0xff197449), Color(0xff3D7B22)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0, 0.8]
        )
      ),
    );
  }

}
