import 'dart:ui';

import 'package:NewLogin/screen/login_Screen.dart';
import 'package:flutter/material.dart';

import 'dashbord_screen.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Container(
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/login.png"),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: const EdgeInsets.only(top: 220),
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.zero,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    left: 15,
                    right: 22,
                  ),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          icon: Image.asset('assets/icons/user.png',),
                          labelText: "Student ID",
                          hintText: "Enter student id",
                          hintStyle:
                          TextStyle(fontSize: 20.0, color: Colors.grey[300]),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            icon: Image.asset('assets/icons/homeIcon.png',),
                            labelText: "Institution Code",
                            hintText: "Enter institution code",
                            hintStyle: TextStyle(
                                fontSize: 20.0, color: Colors.grey[300]),
                            focusColor: Colors.red),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                             icon: Image.asset('assets/icons/phone.png',),
                            labelText: "Mobile Number",
                            hintText: "Enter mobile number",
                            hintStyle: TextStyle(
                                fontSize: 20.0, color: Colors.grey[300]),
                            focusColor: Colors.red),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            icon: Image.asset('assets/icons/password.png',),
                            labelText: "Password",
                            hintText: "Enter password",
                            hintStyle: TextStyle(
                                fontSize: 20.0, color: Colors.grey[300]),
                            focusColor: Colors.red),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text("Already have an account ?"),
                              SizedBox(
                                height: 5,
                              ),
                              InkWell( onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return LoginScreen();
                                    },
                                  ),
                                );
                              },
                                child: Text(
                                  "SignIn here",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: FlatButton(
                              color: Colors.tealAccent[700],
                              textColor: Colors.white,
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.black,
                              padding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 25.0),
                              splashColor: Colors.white,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return DashbordScreen();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                "Sign up",
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Powered by ",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                          Image.asset("assets/images/poweredby.png")
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
