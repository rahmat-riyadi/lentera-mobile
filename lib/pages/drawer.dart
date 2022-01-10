import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lentera_mobile/models/user.dart';
import 'package:lentera_mobile/routes/routes_name.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(),
          DrawerMenu()
        ],
      ),
    );
  }
}

class DrawerHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) => Container(
        padding: EdgeInsets.fromLTRB(
          20, 20, 20, 0
        ),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.35,
        color: Color(0xFF34792C),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rahmat Riyadi Syam",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFFFFFF)
                  ),
                ),
                Text(
                  "60200120116",
                  style: TextStyle(
                    fontSize: 15.5,
                    color: Color(0xFFFFFFFF)
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                "Teknik Informatika",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontStyle: FontStyle.italic
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerMenu extends StatelessWidget {

  bool isTap = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      child: Stack(
        children: [
          Column(
            children: [
              ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/user.svg',
                  width: 20,
                  height: 20,
                  color: (isTap) ? Colors.black : Colors.green
                ),
                title: Text("Profil Publik"),
                onTap: () {
                  Get.back();
                  Get.toNamed(MyRoutes.profile);
                },
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/table-grid.svg',
                  width: 25,
                  height: 25,
                ),
                title: Text("Nilai - Nilai"),
                onTap: () {
                  Get.back();
                  Get.toNamed(MyRoutes.nilai);
                },
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/setting.svg',
                  width: 25,
                  height: 25
                ),
                title: Text("Pengaturan"),
                onTap: () {
                  Get.back();
                  Get.toNamed(MyRoutes.setting);
                }
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/information.svg',
                  width: 25,
                  height: 25
                ),
                title: Text("Tentang Lentera"),
                onTap: (){
                  Get.back();
                  Get.toNamed(MyRoutes.tentang);
                },
              ),
            ],
          ),
          Align(
            alignment: Alignment(1, 0.9),
            child: ListTile(
              leading: Icon(Icons.logout, color: Colors.black,),
              title: Text("keluar"),
              onTap: (){
                Get.offAll(MyRoutes.loginPage);
              },
            ),
          )
        ],
      ),
    );
  }
}