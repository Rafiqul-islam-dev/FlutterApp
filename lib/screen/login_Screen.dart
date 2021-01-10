
import 'package:flutter/material.dart';

import 'dashbord_screen.dart';
import 'signup_Screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(
     resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
              child: Container(
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
                margin: const EdgeInsets.only(top: 230),
                height: size.height,
                width: double.infinity,
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
                    top: 50,
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
                        height: 20,
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
                        height: 40,
                      ),
                      InkWell(
                        onTap: (){
                           Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                    return SignupScreen();
                                  } ,
                                ),
                                );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Text("Don’t have an account ?"),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Register here",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              
                              child: FlatButton(
                              color: Colors.tealAccent[700],
                              textColor: Colors.white,
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.black,
                              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 35.0),
                              splashColor: Colors.white,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                    return DashbordScreen();
                                  } ,
                                ),
                                );
                              },
                              child: Text(
                                "Sign in",
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            height: 120,
                          ),
                         
                          Expanded(
                            child: new Container(
                                margin: const EdgeInsets.only(
                                    left: 10.0, right: 20.0),
                                child: Divider(
                                  color: Colors.black,
                                  height: 36,
                                )),
                          ),
                          Text("Forget Password"),
                          Expanded(
                            child: new Container(
                                margin: const EdgeInsets.only(
                                    left: 20.0, right: 10.0),
                                child: Divider(
                                  color: Colors.black,
                                  height: 36,
                                )),
                          ),
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Powered by ", style: TextStyle(fontSize: 18, color: Colors.grey),),
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
