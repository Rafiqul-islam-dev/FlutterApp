import 'package:flutter/material.dart';

import 'homeScreen.dart';

class Attandancescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Viqarunnisa Noon School & College',
              style: TextStyle(fontSize: 18,),
            ),
            Icon(Icons.notifications)
          ],
          ),
        
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                Color(0xFF00BFA5),
                Colors.tealAccent,
                ])
              ),
              
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage("assets/image/user.jpg"))
                        
                      ),
                    ),
                    // Material(
                    //   borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    //   child: Padding(padding: EdgeInsets.all(8.0),
                    //   child: Image.asset("assets/images/user.jpg", width: 90, height: 90,),
                    //   ),
                    // ),
                    Text(
                      'Sohel Rana',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,

                      ),
                    )
                  ],
                ),
              ),
              
            ),
            CustomeTitle(Icons.person,'My Profile',()=>{}),
            CustomeTitle(Icons.list,'Attendance',()=>{}),
            CustomeTitle(Icons.library_books,'Fess',()=>{}),
            CustomeTitle(Icons.library_music,'Exam & Result',()=>{}),
            CustomeTitle(Icons.calendar_today,'Notice Board',()=>{}),
          ],
        ),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Text("Attendance")
          ],
        ),
      ),
    );
  }
}