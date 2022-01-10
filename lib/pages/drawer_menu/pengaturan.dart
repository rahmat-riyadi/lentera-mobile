import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lentera_mobile/controllers/aut_controller.dart';
import 'package:lentera_mobile/controllers/indexmodel_controller.dart';
import 'package:lentera_mobile/controllers/notif_controller.dart';

class Pengaturan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final autentikasi = Get.put(AutController());
    final notif = Get.put(NotifController());
    final indexModel = Get.put(IndexModel());

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 0.55,
        padding: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
                isDense: true,
                prefixIconConstraints: BoxConstraints(
                  minHeight: 35,
                  minWidth: 40,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                filled: true,
                fillColor: Color(0xFFE0E0E0),
                prefixIcon: Icon(
                  Icons.search,
                  size: 20,
                ),
                hintText: 'cari',
              ),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(width: 1.5, color: Color(0xFFE0E0E0)))),
              child: Material(
                child: InkWell(
                  onTap: () {
                    notif.isSwitch = !notif.isSwitch;
                    notif.update();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Notifikasi Lentera",
                          style: TextStyle(fontSize: 16)),
                      GetBuilder<NotifController>(
                          builder: (_) => Switch(
                                value: notif.isSwitch,
                                onChanged: (value) => notif.changeValue(value),
                                activeColor: Colors.white,
                                activeTrackColor: Colors.green,
                              ))
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(width: 1.5, color: Color(0xFFE0E0E0)))),
              child: Column(
                children: [
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.all(0),
                    title: Text(
                      "Jenis Font",
                      style: TextStyle(fontSize: 16),
                    ),
                    trailing: Text(
                      "Roboto",
                      style: TextStyle(fontSize: 12, color: Color(0xFF696969)),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.all(0),
                    title: Text(
                      "Ukuran Font",
                      style: TextStyle(fontSize: 16),
                    ),
                    trailing: Text(
                      "Sedang",
                      style: TextStyle(fontSize: 12, color: Color(0xFF696969)),
                    ),
                  ),
                  GetBuilder<IndexModel>(
                    initState: (_) {},
                    builder: (_) {
                      return ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.all(0),
                          title: Text(
                            "Model Index",
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing: Text(
                            "${indexModel.indexTitle}",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF696969)),
                          ),
                          onTap: () => Get.defaultDialog(

                            content: Container(
                            child: Column(
                              children: [
                                GetBuilder<IndexModel>(
                                  builder: (_) => RadioListTile(
                                    value: 1,
                                    groupValue: indexModel.selectedValue,
                                    title: Text("Model 1"),
                                    selected: (indexModel.selectedValue == 1) ? true : false,
                                    onChanged: (value) {
                                      indexModel.changeValue(value);
                                      indexModel.changeIndex('model 1');
                                      Timer(Duration(milliseconds: 50),  (){
                                        Get.back();
                                      });
                                    },
                                  )
                                ),
                                GetBuilder<IndexModel>(
                                  builder: (_) => RadioListTile(
                                    value: 2,
                                    groupValue: indexModel.selectedValue,
                                    title: Text("Model 2"),
                                    selected: (indexModel.selectedValue == 2) ? true : false,
                                    onChanged: (value) {
                                      indexModel.changeValue(value);
                                      indexModel.changeIndex('model 2');
                                      Timer(Duration(milliseconds: 50),  (){
                                        Get.back();
                                      });
                                    },
                                  )
                                ),
                              ],
                            ),
                          )
                        )
                      );
                    },
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.5, color: Color(0xFFE0E0E0))
                )
              ),
              child: Column(
                children: [
                  Material(
                    child: InkWell(
                      onTap: () {
                        autentikasi.isSwitch = !autentikasi.isSwitch;
                        autentikasi.update();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Autentikasi Biometrik",
                            style: TextStyle(fontSize: 16)
                          ),
                          GetBuilder<AutController>(
                            builder: (_) => Switch(
                              value: autentikasi.isSwitch,
                              onChanged: (value) {
                                autentikasi.changeValue(value);
                              },
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              activeColor: Colors.white,
                              activeTrackColor: Colors.green,
                            )
                          )
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.all(0),
                    title: Text(
                      "Jenis Autentikasi",
                      style: TextStyle(fontSize: 16),
                    ),
                    trailing: Text(
                      "Sidik Jari dan Wajah",
                      style: TextStyle(fontSize: 12, color: Color(0xFF696969)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
