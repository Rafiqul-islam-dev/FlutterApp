import 'package:flutter/material.dart';

import '../constants.dart';
import 'homeScreen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
                  child: Text(
                'Viqarunnisa Noon School & College',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
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
              ])),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/user.jpg"))),
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
            CustomeTitle(Icons.person, 'My Profile', () => {}),
            CustomeTitle(Icons.list, 'Attendance', () => {}),
            CustomeTitle(Icons.library_books, 'Fess', () => {}),
            CustomeTitle(Icons.library_music, 'Exam & Result', () => {}),
            CustomeTitle(Icons.calendar_today, 'Notice Board', () => {}),
          ],
        ),
      ),
      body: Container(
          width: double.infinity,
          decoration: new BoxDecoration(
              //color: Colors.red, //new Color.fromRGBO(255, 0, 0, 0.0),
              borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0))),
          child: StudentProfil()),
    );
  }
}

class StudentProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        //constraints:
            //BoxConstraints(minHeight: MediaQuery.of(context).size.height),
        color: kPageColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //for user profile header
            Container(
              padding: EdgeInsets.only(left: 32, right: 32, top: 10),
              decoration: BoxDecoration(
                  color: const Color(0xffFFFFFFB),
                  borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(30.0),
                      bottomRight: const Radius.circular(30.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                      height: 70,
                      width: 70,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/user.jpg',
                          fit: BoxFit.cover,
                        ),
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "John Doe",
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "ID: " + "201201",
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "SMS Notification No",
                      ),
                      Text("01569352893"),
                    ],
                  )
                ],
              ),
            ),

            Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: _tabSection(context))
          ],
        ),
      ),
    );
  }

  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1), color: Colors.white),
            child: TabBar(
                labelPadding: EdgeInsets.all(1),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: kPrimaryColor,
                ),
                tabs: [
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.all(1),
                      child: Text(
                        'Basic Info',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    iconMargin: EdgeInsets.all(0),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        'Guardian',
                        style: TextStyle(color: Colors.black, fontSize: 14.0),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        'Contact',
                        style: TextStyle(color: Colors.black, fontSize: 14.0),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        'Academic',
                        style: TextStyle(color: Colors.black, fontSize: 14.0),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        'Sibling',
                        style: TextStyle(color: Colors.black, fontSize: 14.0),
                      ),
                    ),
                  ),
                ]),
          ),
          Container(
            //Add this to give height
            //height: 1000,
            height: MediaQuery.of(context).size.height*1.2,
            child: TabBarView(

                children: [
              Container(
                child: Container(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),

                          //Basic Info
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            
                            //Academic Information
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  
                                  Row(
                                    children: [
                                      Text(
                                        "Academic Information",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff3FB39D),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Version",
                                        style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                      ),
                                      SizedBox(width: 65,),
                                      Text("Bangla"),

                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    color: const Color(0xffDCDCDC),
                                    child: Padding(
                                       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Session",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),

                                          ),
                                          SizedBox(width: 60,),
                                          Text(
                                            "Summer 2018",
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Branch",
                                        style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                      ),
                                      SizedBox(width: 70,),
                                      Text("Dhanmondi"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    color: const Color(0xffDCDCDC),
                                    child: Padding(
                                       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Shift",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          SizedBox(width: 83,),
                                          Text(
                                            "ASDF",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Class",
                                        style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                      ),
                                      SizedBox(width: 80,),
                                      Text("Ten"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    color: const Color(0xffDCDCDC),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Group",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          SizedBox(width: 76,),
                                          Container(
                                            width: 170,
                                            child: Text(
                                              "Business Studies",maxLines: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Section",
                                        style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                      ),
                                      SizedBox(width: 70,),
                                      Text("C"),

                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                   Container(
                                    color: const Color(0xffDCDCDC),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Admission Date",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          SizedBox(width: 15,),
                                          Text(
                                            "01-02-2018",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        //Personal Info
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  
                                  Row(
                                    children: [
                                      Text(
                                        "Personal Information",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff3FB39D),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Religion",
                                        style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                      ),
                                      SizedBox(width: 105,),
                                      Text("Islam"),

                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    color: const Color(0xffDCDCDC),
                                    child: Padding(
                                       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Hight",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),

                                          ),
                                          SizedBox(width: 120,),
                                          Text(
                                            "4'2",
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Blood Group",
                                        style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                      ),
                                      SizedBox(width: 82,),
                                      Text("A+"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    color: const Color(0xffDCDCDC),
                                    child: Padding(
                                       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Date of Birth",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          SizedBox(width: 73,),
                                          Text(
                                            "10-10-20",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Age",
                                        style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                      ),
                                      SizedBox(width: 135,),
                                      Text("25"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    color: const Color(0xffDCDCDC),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Weight (Kg)",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          SizedBox(width: 82,),
                                          Container(
                                            width: 170,
                                            child: Text(
                                              "62",maxLines: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Physical Drawback",
                                        style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                      ),
                                      SizedBox(width: 39,),
                                      Text("None"),

                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                   Container(
                                    color: const Color(0xffDCDCDC),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Nationality",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          SizedBox(width: 85,),
                                          Text(
                                            "Bangladeshi",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                   Container(
                                    color: const Color(0xffDCDCDC),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Medicine Instruction",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          SizedBox(width: 25,),
                                          Text(
                                            "None",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //Guardian Info

              Container(
                child: Container(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            
                            //Father Info
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  
                                  Row(
                                    children: [
                                      Text(
                                        "Father Information",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff3FB39D),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Name",
                                        style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                      ),
                                      SizedBox(width: 85,),
                                      Text("Sohel Rana"),

                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    color: const Color(0xffDCDCDC),
                                    child: Padding(
                                       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Profession",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),

                                          ),
                                          SizedBox(width: 50,),
                                          Text(
                                            "Teacher",
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Monthly Income",
                                        style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                      ),
                                      SizedBox(width: 20,),
                                      Text("1000"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    color: const Color(0xffDCDCDC),
                                    child: Padding(
                                       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Mobil",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          SizedBox(width: 85,),
                                          Text(
                                            "010114111411",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "TIN",
                                        style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                      ),
                                      SizedBox(width: 98,),
                                      Text("255884635"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    color: const Color(0xffDCDCDC),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Office Address",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          SizedBox(width: 20,),
                                          Container(
                                            width: 170,
                                            child: Text(
                                              "Jigatola, Dhanmondi",maxLines: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Email",
                                        style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                      ),
                                      SizedBox(width: 85,),
                                      Text("Email@gmail.com"),

                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                   Container(
                                    color: const Color(0xffDCDCDC),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Qualification",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          SizedBox(width: 35,),
                                          Text(
                                            "BBA",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "NID No",
                                        style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                      ),
                                      SizedBox(width: 70,),
                                      Text("2548785652474"),

                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                   Container(
                                    color: const Color(0xffDCDCDC),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Passport No",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          SizedBox(width: 35,),
                                          Text(
                                            "2544885214",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                      ],
                    ),
                  ),
                ),
              ),

              //Contact Info
              Container(

                height: 900,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(

                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            //height: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset:
                                  Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              //Present Info
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Present Address",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                            color: const Color(0xff3FB39D),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Address",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        SizedBox(width: 70,),
                                        Container(width:160,child: Text("263 No House, Dhanmondi, Dhaka",maxLines: 2,)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      color: const Color(0xffDCDCDC),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Police Station",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),

                                            ),
                                            SizedBox(width: 35,),
                                            Text(
                                              "Dhanmondi",
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Post Office",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        SizedBox(width: 55,),
                                        Text("Jigatola-1263"),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            //height: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset:
                                  Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),

                              //Permanent Address
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Permanent Address",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                            color: const Color(0xff3FB39D),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Address",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        SizedBox(width: 70,),
                                        Container(width:160,child: Text("263 No House, Dhanmondi, Dhaka",maxLines: 2,)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      color: const Color(0xffDCDCDC),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Police Station",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),

                                            ),
                                            SizedBox(width: 35,),
                                            Text(
                                              "Dhanmondi",
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Post Office",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        SizedBox(width: 55,),
                                        Text("Jigatola-1263"),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            //height: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset:
                                  Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),

                              //Emergency Contact
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Emergency contact",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                            color: const Color(0xff3FB39D),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Name",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        SizedBox(width: 90,),
                                        Container(width:160,child: Text("Arafat Hossain",)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      color: const Color(0xffDCDCDC),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Relation",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                            SizedBox(width: 73,),
                                            Text(
                                              "Uncle",
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Contact Number",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        SizedBox(width: 25,),
                                        Text("0189569325"),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      color: const Color(0xffDCDCDC),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Email",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),

                                            ),
                                            SizedBox(width: 90,),
                                            Text(
                                              "name@gmail.com",
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Address",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        SizedBox(width: 73,),
                                        Container(width:150,child: Text("263 No House, Dhanmondi, Dhaka",maxLines: 2,)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      color: const Color(0xffDCDCDC),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "NID no",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),

                                            ),
                                            SizedBox(width: 80,),
                                            Text(
                                              "6953289",
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

              ),
              //Contact Info Ends
              Container(
                child: Text("Academic"),
              ),
              Container(
                child: Text("Sibling"),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
