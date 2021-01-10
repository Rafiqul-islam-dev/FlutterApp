import 'package:flutter/material.dart';

import '../constants.dart';
import 'homeScreen.dart';
import 'question_screen.dart';

class ExamScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              image: AssetImage("assets/image/user.jpg"))),
                    ),
                    
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

      //Exam List View
      body: Center(
        child: Container(
          color: const Color(0xFFF4F5FB),
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 90,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '20 QUESTIONS',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue[700],
                          ),
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'new',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'English 1st Paper Test',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 70,
                          height: 30,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          child: FlatButton(
                            color: kStart,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                    return QuestionScreen();
                                  } ,
                                ),
                                );
                            },
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Start",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                ),
                                Icon(
                                  Icons.play_arrow,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 90,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '20 QUESTIONS',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kMistake,
                          ),
                          padding: EdgeInsets.all(5),
                          child: Text(
                            '6 mistakes',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '26 October 2020',
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'English 1st Paper Test',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 70,
                          height: 30,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          child: FlatButton(
                            color: kStart,
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Start",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                ),
                                Icon(
                                  Icons.play_arrow,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 90,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '20 QUESTIONS',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kDone,
                          ),
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'All Done',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '26 October 2020',
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'English 1st Paper Test',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 70,
                          height: 30,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          child: FlatButton(
                            color: kStart,
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Start",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                ),
                                Icon(
                                  Icons.play_arrow,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 90,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '20 QUESTIONS',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kDone,
                          ),
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'All Done',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '26 October 2020',
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'English 1st Paper Test',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 70,
                          height: 30,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          child: FlatButton(
                            color: kStart,
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Start",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                ),
                                Icon(
                                  Icons.play_arrow,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 90,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '20 QUESTIONS',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kDone,
                          ),
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'All Done',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '26 October 2020',
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'English 1st Paper Test',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 70,
                          height: 30,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          child: FlatButton(
                            color: kStart,
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Start",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                ),
                                Icon(
                                  Icons.play_arrow,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 90,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '20 QUESTIONS',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kDone,
                          ),
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'All Done',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '26 October 2020',
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'English 1st Paper Test',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 70,
                          height: 30,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          child: FlatButton(
                            color: kStart,
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Start",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                ),
                                Icon(
                                  Icons.play_arrow,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 90,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '20 QUESTIONS',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kDone,
                          ),
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'All Done',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '26 October 2020',
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'English 1st Paper Test',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 70,
                          height: 30,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          child: FlatButton(
                            color: kStart,
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Start",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                ),
                                Icon(
                                  Icons.play_arrow,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
