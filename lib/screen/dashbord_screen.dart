import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'package:flutter/material.dart';

//import 'attandance_screen.dart';
import 'exam_screen.dart';
import 'homeScreen.dart';
import 'fess_screen.dart';
import 'profile_screen.dart';


class DashbordScreen extends StatefulWidget {

  @override
  _DashbordScreenState createState() => _DashbordScreenState();
}

class _DashbordScreenState extends State<DashbordScreen> {

 int selectedpage=0;
 final _pageOption=[HomeScreen(), FessScreen(),ProfileScreen(),ExamScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: _pageOption[selectedpage],
    bottomNavigationBar: ConvexAppBar(
    items: [
      TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.map, title: 'Fess'),
      TabItem(icon: Icons.add, title: 'Dashbord'),
      TabItem(icon: Icons.message, title: 'MCQ Test'),
      
    ],
    backgroundColor: Colors.tealAccent[700],
    initialActiveIndex: selectedpage,//optional, default as 0
    onTap: (int index){
      setState(() {
        selectedpage= index;
      });
    },
  ),
        
  );
  }
}