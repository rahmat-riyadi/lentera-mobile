import 'package:flutter/material.dart';
import 'package:lentera_mobile/pages/drawer.dart';
import 'package:lentera_mobile/ui_need/app_bar.dart';
import 'package:lentera_mobile/ui_need/table.dart';

class Nilai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: customBar,
      body: Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.3,
        child: table,
      ),
    );
  }
}