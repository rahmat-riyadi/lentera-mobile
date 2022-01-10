import 'package:get/get.dart';
import 'package:lentera_mobile/pages/class_page.dart';
import 'package:lentera_mobile/pages/drawer_menu/nilai.dart';
import 'package:lentera_mobile/pages/drawer_menu/pengaturan.dart';
import 'package:lentera_mobile/pages/drawer_menu/profile.dart';
import 'package:lentera_mobile/pages/drawer_menu/tentang.dart';
import 'package:lentera_mobile/pages/fingerprintPage.dart';
import 'package:lentera_mobile/pages/index.dart';
import 'package:lentera_mobile/pages/loginPage.dart';
import 'package:lentera_mobile/pages/task.dart';
import 'routes_name.dart';

class AppPage {
  static final pages = [
    GetPage(name: MyRoutes.fingerPrint, page: () => FingerPage()),
    GetPage(
      name: MyRoutes.index, 
      page: () => Index(),
      transition: Transition.fade
    ),
    GetPage(
      name: MyRoutes.loginPage,
      page: () => LoginPage(),
      transition: Transition.fade
    ),
    GetPage(
      name: MyRoutes.classPage,
      page: () => NewClass(),
      transition: Transition.size
    ),
    GetPage(name: MyRoutes.profile, page: () => Profile()),
    GetPage(name: MyRoutes.setting, page: () => Pengaturan()),
    GetPage(name: MyRoutes.nilai, page: () => Nilai()),
    GetPage(name: MyRoutes.tentang, page: () => Tentang()),
    GetPage(name: MyRoutes.task, page: () => Task()),
    // GetPage(name: MyRoutes.note, page: () => NoteField()),
  ];
}