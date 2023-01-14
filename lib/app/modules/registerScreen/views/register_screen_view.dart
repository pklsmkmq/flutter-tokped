import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../config/warna.dart';
import '../controllers/register_screen_controller.dart';

class RegisterScreenView extends GetView<RegisterScreenController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Obx(() => Scaffold(
            body: SingleChildScrollView(
          child: Container(
            width: lebar,
            padding: EdgeInsets.fromLTRB(25, 50, 25, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Text("Create Account",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 40),
                        child: Text("Connect with your friends today!",
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
                        child: Text("Mobile Phone",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                hintText: "Enter Your Mobile Phone",
                                prefixIcon: Container(
                                  width: lebar * 0.13,
                                  child: Row(
                                    children: [
                                      Container(
                                          margin:
                                              EdgeInsets.fromLTRB(10, 5, 10, 5),
                                          child: Text(
                                            "+62",
                                            style: TextStyle(fontSize: 17, color: subJudul),
                                          )),
                                      Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 5, 0, 5),
                                          height: tinggi * 0.04,
                                          child: VerticalDivider(
                                            color: lineGrey,
                                            width: 2,
                                          ))
                                    ],
                                  ),
                                ),
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
                                style:
                                    TextStyle(fontSize: 15, color: subJudul))),
                      ),
                      Container(
                        width: lebar,
                        height: tinggi * 0.08,
                        margin: EdgeInsets.only(bottom: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: bgLogin2),
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
                // Container(
                //   child:
                //       Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                //     Text("Don’t have an account ?",
                //         style: TextStyle(fontSize: 18, color: subJudul)),
                //     TextButton(
                //         onPressed: () {},
                //         child: Text("Sign Up",
                //             style: TextStyle(fontSize: 18, color: bgLogin2)))
                //   ]),
                // ),
              ],
            ),
          ),
        )));
  }
}
