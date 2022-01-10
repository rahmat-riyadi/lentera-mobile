import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lentera_mobile/models/mataKuliah.dart';
import 'package:lentera_mobile/models/materi.dart';
import 'package:lentera_mobile/models/user.dart';
import 'package:lentera_mobile/routes/routes_name.dart';
import 'package:lentera_mobile/student.dart';
import 'package:lentera_mobile/ui_need/textfield_status.dart';
import '../ui_need/login_background.dart';


class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {

  late AnimationController controller;
  late AnimationController firstFormController;
  late AnimationController secondFormController;
  late AnimationController thirdFormController;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: 1500),
      vsync: this,
    );

    firstFormController = AnimationController(
      duration: Duration(milliseconds: 1000),
      vsync: this,
    );

    secondFormController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );

    thirdFormController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
   
    controller.forward();
    Future.delayed(Duration(milliseconds: 1000), () => firstFormController.forward());
    Future.delayed(Duration(milliseconds: 1800), () => secondFormController.forward());
    Future.delayed(Duration(milliseconds: 2100), () => thirdFormController.forward());
    
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    final user = Get.put(User());
    TextEditingController usernameController = TextEditingController(text: '60200120116');
    TextEditingController passwordController = TextEditingController(text: '123456');
    var deviceHeight = MediaQuery.of(context).size.height;
    var devicewidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: FutureBuilder<QuerySnapshot<Object?>>(
        future: user.getData(),
        builder: (context, snapshot) => Stack(
          children: [
            BackgroundLogin().backgroundLogin(context),
            Align(
              child: AnimatedBuilder(
                animation: controller,
                builder: (context, child) => FadeTransition(
                  opacity: controller, child: child,
                ),
                child: SlideTransition(
                  position: Tween<Offset>(begin: Offset(0, -0.3), end: Offset.zero).animate(
                    CurvedAnimation(parent: controller, curve: Curves.ease)
                  ),
                  child: SvgPicture.asset('assets/svg/UINAM.svg', width: 200, height: 200, color: Color(0xffffffff),)
                ),
              ),
              alignment: Alignment(0, -0.6),
            ),
            Align(
              alignment: Alignment(0, 0.4),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 35),
                child: Container(
                  width: devicewidth * 0.9,
                  height: deviceHeight * 0.35,
                  child: Column(                                                                         //form
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnimatedBuilder(
                        animation: firstFormController,
                        builder: (context, child) => FadeTransition(
                          opacity: firstFormController, child: child, 
                        ),
                        child: SlideTransition(
                          position: Tween<Offset>(begin: Offset(0, -0.3), end: Offset.zero).animate(
                            CurvedAnimation(parent: firstFormController, curve: Curves.ease)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('NIM', style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold
                              )),
                              SizedBox(height: 5),
                              TextField(
                                style: TextStyle(color: Colors.white),
                                controller: usernameController,
                                decoration: InputDecoration(
                                  filled: true,
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  fillColor: Color(0xFFFFFFFF).withOpacity(0.09),
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  suffixIcon: Icon(Icons.person, color: Colors.white),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 1, color: Colors.white),
                                    borderRadius: BorderRadius.circular(5)
                                  )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      AnimatedBuilder(
                        animation: secondFormController,
                        builder: (context, child) => FadeTransition(
                          opacity: secondFormController, child: child
                        ),
                        child: SlideTransition(
                          position: Tween<Offset>(begin: Offset(0, -0.3), end: Offset.zero).animate(secondFormController),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Password', style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold
                              )),
                              SizedBox(height: 5),
                              TextField(
                                obscureText: true,
                                style: TextStyle(color: Colors.white),
                                controller: passwordController,
                                decoration: InputDecoration(
                                  filled: true,
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  fillColor: Color(0xFFFFFFFF).withOpacity(0.09),
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  suffixIcon: Icon(Icons.person, color: Colors.white),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 1, color: Colors.white)
                                  )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      AnimatedBuilder(
                        animation: thirdFormController,
                        builder: (context, child) => FadeTransition(
                          opacity: thirdFormController, child: child,
                        ),
                        child: SlideTransition(
                          position: Tween<Offset>(begin: Offset(0, -0.3), end: Offset.zero).animate(
                            CurvedAnimation(parent: thirdFormController, curve: Curves.ease)
                          ),
                          child: Row(                                                                        //form button
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlatButton(
                                onPressed: () {
                                  Get.toNamed(MyRoutes.index);
                                  // for(int i = 0; i < account.length; i++){
                                  //   if(usernameController.text == account[i][0]){
                                  //     if(passwordController.text == account[i][1]){
                                  //       Get.toNamed(MyRoutes.index);
                                  //       return;
                                  //     }
                                  //     print('password salah');
                                  //     usernameController.clear();
                                  //     passwordController.clear();
                                  //     return;
                                  //   } 
                                  // }
                                  // print('anda bukan anak uin');
                                  // usernameController.clear();
                                  // passwordController.clear();
                                  // return;
                                  // var listData = snapshot.data!.docs;
                                  // for(int i = 0; i < listData.length; i++){
                                  //   if(listData[i].id.toString() == usernameController.text){
                                  //     if((listData[i].data() as Map<String,dynamic>)['password'].toString() == passwordController.text){
                                  //       matakuliah.getCoursesList(listData[i].id);
                                  //       // materi.getLearningMaterial(listData[i].id);
                                  //       Get.toNamed(MyRoutes.index, arguments: listData[i].id);
                                  //       usernameController.clear();
                                  //       passwordController.clear();
                                  //       return;
                                  //     }
                                  //     print('password salah');
                                  //     usernameController.clear();
                                  //     passwordController.clear();
                                  //     return;
                                  //   }
                                  // }
                                  // print('nim tidak ada');
                                  // usernameController.clear();
                                  // passwordController.clear();
                                  // return;
                                } ,
                                color: Colors.white,
                                padding: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                                child: Text(
                                  "masuk", 
                                  style: TextStyle(color: Color(0xff197449), fontSize: 15)
                                ),
                                // highlightedBorderColor: Color(0xff197449),
                              ),
                              Transform.scale(
                                scale: .8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Color(0xffffffff)
                                    )
                                  ),
                                  child: IconButton(
                                    onPressed: () => Get.toNamed(MyRoutes.fingerPrint),
                                    icon: SvgPicture.asset('assets/svg/fingerprint.svg', color: Color(0xffffffff)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => print("lupa kata sandi"),
                        child: Container(
                          width: 150,
                          child: Text(
                            "lupa nama pengguna atau kata sandi ?",
                            textAlign: TextAlign.left,
                            maxLines: 2,
                            style: TextStyle(
                              color: Color(0xffE1DADA)
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.8,0.95),
              child: Text(
                "By Rahmat Riyadi Syam",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 14,
                  fontStyle: FontStyle.italic
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
