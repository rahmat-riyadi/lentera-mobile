import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lentera_mobile/controllers/indexmodel_controller.dart';
import 'package:lentera_mobile/controllers/tabBar_controller.dart';
import 'package:lentera_mobile/pages/drawer.dart';
import 'package:lentera_mobile/pages/home/file.dart';
import 'package:lentera_mobile/pages/home/note.dart';
import 'package:lentera_mobile/ui_need/app_bar.dart';

class Index extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
  final indexModel = Get.put(IndexModel());
  final tabBarController = Get.put(TabBarController());
  bool isTap = true;


  return DefaultTabController(
    
    length: 3,
    initialIndex: 0,
    child: Scaffold(
      drawer: MyDrawer(),
      appBar: customBar,
        body: GetBuilder<IndexModel>(
          init: IndexModel(),
          builder: (_) => TabBarView(
            controller: tabBarController.tabController,
            children: [
              indexModel.useIndex,
              NotePage(),
              File(),
            ],
          )
        ),
        bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height * 0.09,
          margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xFFE8E8E8)
          ),
          child: TabBar(
            controller: tabBarController.tabController,
            indicator: BoxDecoration(
              color: Color(0xFF197449),
              borderRadius: BorderRadius.circular(12),
            ),
            labelColor: Color(0xFFFFFFFF),
            // unselectedLabelColor: Color(0xFFD4DBD4),
            unselectedLabelColor: Color(0xFFC9C9C9),
            unselectedLabelStyle: TextStyle(fontSize: 0),
            tabs: [
              Tab(
                icon: Icon(Icons.home_rounded),
                text: 'Home',
                iconMargin: EdgeInsets.zero,
              ),
              Tab(
                icon: Icon(Icons.notes_rounded),
                iconMargin: EdgeInsets.zero,
                text: 'Note',
              ),
              Tab(
                icon: Icon(Icons.file_copy_rounded),
                iconMargin: EdgeInsets.zero,
                text: 'File',
              ),
            ],
          ),
          // child: BottomNavigationBar(
          //   currentIndex: bottomBarController.currentIndex,
          //   items: [
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.home_rounded),
          //       title: Text('Home')
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.message),
          //       title: Text('Note')
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.file_copy),
          //       title: Text('File')
          //     )
          //   ],
          // ),
        )
      ),
    );
  }
}
