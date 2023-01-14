import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';
import '../../../../config/warna.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: tinggi,
      padding: EdgeInsets.fromLTRB(20, 50, 30, 20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [bgLogin, bgLogin2])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //gambar splash screen
          Container(
            width: lebar,
            height: tinggi * 0.3,
            // color: Colors.black,
            margin: EdgeInsets.only(bottom: 20),
            child: Image.asset("assets/img/sp.png", fit: BoxFit.fill),
            //masukkan background gambar yang sudah dikirim di telegram
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            width: lebar * 0.6,
            child: Text(
              "Let's Get Started",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: tinggi * 0.1),
            width: lebar * 0.8,
            child: Text(
              "Connect with each other with chatting or calling. Enjoy safe and private texting",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: tinggi * 0.1),
            width: lebar,
            height: tinggi * 0.08,
            child: ElevatedButton(
                onPressed: () => Get.toNamed("/register-screen"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: Text(
                  "Join Now",
                  style: TextStyle(fontSize: 20, color: bgLogin),
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              SizedBox(width: 5),
              InkWell(
                onTap: () => Get.toNamed("/login-screen"),
                child: Text("Login",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          )
          //kasih judul sesuai figma
          //kasih sub judul  sesuai figma
        ],
      ),
    ));
  }
}
