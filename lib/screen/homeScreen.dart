import 'dart:ui';

import 'package:NewLogin/screen/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: Text('Viqarunnisa Noon School & College',
                style: TextStyle(fontSize: 18,),
              ),
            ),
            Icon(Icons.notifications)
          ],
          ),
        
      ),
      drawer: Drawer(
        child: Container(
          color: kDrawer,
          child: ListView(
            children: <Widget>[
              Container(
                 height: 100,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    
                  ),
                  
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            border: Border.all(color: kPrimaryColor),
                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage("assets/images/user.jpg"))
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 14, left: 10),
                          
                          child: Column(
                            children: [
                              Text(
                            'Mustanjid Hasan',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                            
                          ),
                          SizedBox(height: 2,),
                          Text(
                            'সোহেল ',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                            
                          ),
                            ],
                          )
                        )
                      ],
                    ),
                  ),
                ),
              ),
              CustomeTitle(Icons.person,'My Profile',()=>{}),
              CustomeTitle(Icons.list,'Attendance',()=>{}),
              CustomeTitle(Icons.library_books,'Fess',()=>{}),
              CustomeTitle(Icons.library_music,'Exam & Result',()=>{}),
              CustomeTitle(Icons.calendar_today,'Notice Board',()=>{}),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                child: Divider(
                  thickness: 2,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/icons/logout.png',),
                        SizedBox(width: 16,),
                        Text("Logout",
                        style: TextStyle(fontSize: 20,),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
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
      body: Container(
        margin: EdgeInsets.only(top: 10.0),
       height: 800,
       decoration: BoxDecoration(
         color: kPageColor, //new Color.fromRGBO(255, 0, 0, 0.0),
                  borderRadius: new BorderRadius.only(
                    topLeft:  const  Radius.circular(40.0),
                    topRight: const  Radius.circular(40.0))
       ),     
        child: CustomeCard()
        ),
    );
  }
}

class CustomeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          margin: EdgeInsets.only(top: 20, left: 0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Welcome,'+' Mustafizur Rahman',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage("assets/images/user.jpg"))
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 35,
                thickness: 1,
              ),
              Flexible(
                child: GridView.count(
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  primary: false,
                  crossAxisCount: 3,
                  children: <Widget>[
                    Card(
                      color: Colors.grey[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      elevation: 4,
                      child: InkWell(
                        splashColor: Colors.orangeAccent,
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                return ProfileScreen();
                              } ,
                            ),
                            )
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset("assets/icons/si.png", ),
                              //SvgPicture.asset("assets/icons/si.png", width: 110,),
                              Text('Student',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Information")
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.grey[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)
                      ),
                      elevation: 4,
                      child: InkWell(
                        splashColor: Colors.orangeAccent,
                        onTap: ()=>{},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset("assets/icons/da.png",),
                              Text('Daily',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Attendance")
                            ],
                          ),
                        ),
                      ),
                    ),
                     Card(
                       color: Colors.grey[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)
                      ),
                      elevation: 4,
                      child: InkWell(
                        splashColor: Colors.orangeAccent,
                        onTap: ()=>{},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset("assets/icons/ex&r.png",),
                              Text('Examination',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("& Result")
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.grey[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)
                      ),
                      elevation: 4,
                      child: InkWell(
                        splashColor: Colors.orangeAccent,
                        onTap: ()=>{},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset("assets/icons/fess.png",),
                              Text('Fees',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Management")
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.grey[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)
                      ),
                      elevation: 4,
                      child: InkWell(
                        splashColor: Colors.orangeAccent,
                        onTap: ()=>{},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset("assets/icons/lms.png",),
                              Text('Learning',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Management")
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.grey[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)
                      ),
                      elevation: 4,
                      child: InkWell(
                        splashColor: Colors.orangeAccent,
                        onTap: ()=>{},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset("assets/icons/c&c.png",),
                              Text('Connection',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                              Text("with contact")
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.grey[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)
                      ),
                      elevation: 4,
                      child: InkWell(
                        splashColor: Colors.orangeAccent,
                        onTap: ()=>{},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset("assets/icons/req.png",),
                              Text('Request',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                              Text("Any time")
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.grey[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)
                      ),
                      elevation: 4,
                      child: InkWell(
                        splashColor: Colors.orangeAccent,
                        onTap: ()=>{},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset("assets/icons/stt.png", ),
                              Text('School',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                              Text("Time table")
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.grey[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      elevation: 4,
                      child: InkWell(
                        splashColor: Colors.orangeAccent,
                        onTap: ()=>{},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset("assets/icons/feedback.png",),
                              Text('Feedback',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("give us")
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],

                ),
              ),
            ],
          ),
      ),
    );
  }
}



class CustomeTitle extends StatelessWidget {
  IconData icon;
  String text;
  Function onTab;
  CustomeTitle(this.icon,this.text,this.onTab);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      decoration: BoxDecoration(
        // border: Border(bottom: BorderSide(color: Colors.grey[400]))
      ),
      child: InkWell(
        splashColor: Colors.orangeAccent,
        onTap: onTab,
        child: Container(
          //height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(icon),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                child: Text(text,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,

                      ),
                ),
              ),
                ],
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}