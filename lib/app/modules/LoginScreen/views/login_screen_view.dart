// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  final controller = Get.put(LoginScreenController());

  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Obx(() => Scaffold(
            body: Container(
          width: lebar,
          padding: EdgeInsets.fromLTRB(25, 50, 25, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: tinggi * 0.85,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text("Hi, Welcome Back!",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 40),
                      child: Text("Hello again, you’ve been missed!",
                          style: TextStyle(fontSize: 18, color: subJudul)),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text("Email Address",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: "Enter Your Email",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10)))),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text("Password",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: TextField(
                          obscureText: controller.eye.value,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () => controller.changeEye(),
                                  icon: Icon(
                                      controller.eye.value
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.grey)),
                              hintText: "Enter Your Password",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10)))),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(bottom: 20),
                      child: TextButton(
                          onPressed: () {},
                          child: Text("Forgot Password",
                              style: TextStyle(fontSize: 15, color: subJudul))),
                    ),
                    Container(
                      width: lebar,
                      height: tinggi * 0.08,
                      margin: EdgeInsets.only(bottom: 20),
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(backgroundColor: bgLogin2),
                        onPressed: () {},
                        child: Text("Login",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                      ),
                    ),
                    Container(
                      width: lebar,
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(children: [
                        Expanded(child: Divider(color: lineGrey)),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            child: Text("Or Login With",
                                style: TextStyle(
                                    color: subJudul, fontSize: 15))),
                        Expanded(child: Divider(color: lineGrey))
                      ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: lebar * 0.35,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset("assets/img/Facebook.png"),
                                Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Facebook",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: lebar * 0.35,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset("assets/img/Google.png"),
                                Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Google",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Don’t have an account ?",
                      style: TextStyle(fontSize: 18, color: subJudul)),
                  TextButton(
                      onPressed: () => Get.toNamed("/register-screen"),
                      child: Text("Sign Up",
                          style: TextStyle(fontSize: 18, color: bgLogin2)))
                ]),
              ),
            ],
          ),
        )));
  }
}
