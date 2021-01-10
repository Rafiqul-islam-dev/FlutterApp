import 'package:flutter/material.dart';

import '../constants.dart';
import 'homeScreen.dart';

class QuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: Text(
                'MCQ Examination',
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
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Question " + "5/20",
                          style: TextStyle(fontSize: 18, color: Colors.black)),
                      Text("02:55",
                          style: TextStyle(fontSize: 18, color: Colors.black))
                    ],
                  ),
                ),
              ),
              Container(
                height: 520,
                margin: EdgeInsets.only(top: 30, left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Select an answer"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "While inserting her homework in the proper slot, Margie was thinking about",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            ExamQustion(),
                            Container(
                                margin: EdgeInsets.only(left: 220, top: 20),
                                width: 130,
                                child: ButtonTheme(
                                  minWidth: 70,
                                  height: 45,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: FlatButton(
                                    color: kStart,
                                    onPressed: () {},
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "Next",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyQuestin extends StatefulWidget {
  @override
  _MyQuestinState createState() => _MyQuestinState();
}

class _MyQuestinState extends State<MyQuestin> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

enum SingingCharacter { Desserts, Vacation, Old, Tommy }

/// This is the stateful widget that the main application instantiates.
class ExamQustion extends StatefulWidget {
  ExamQustion({Key key}) : super(key: key);

  @override
  _ExamQustion createState() => _ExamQustion();
}

/// This is the private State class that goes with MyStatefulWidget.
class _ExamQustion extends State<ExamQustion> {
  SingingCharacter _character = SingingCharacter.Desserts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(3.0),
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              border: Border.all(color: kBorder),
              borderRadius: BorderRadius.circular(10)),
          child: RadioListTile<SingingCharacter>(
            title: const Text('Desserts'),
            value: SingingCharacter.Desserts,
            groupValue: _character,
            onChanged: (SingingCharacter value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.all(3.0),
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              color: kPrimaryColor,
              border: Border.all(color: kBorder),
              borderRadius: BorderRadius.circular(10)),
          child: RadioListTile<SingingCharacter>(
            title: const Text(
              'Vacation in Turkey',
              style: TextStyle(color: Colors.white),
            ),
            value: SingingCharacter.Vacation,
            groupValue: _character,
            onChanged: (SingingCharacter value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.all(3.0),
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              border: Border.all(color: kBorder),
              borderRadius: BorderRadius.circular(10)),
          child: RadioListTile<SingingCharacter>(
            title: const Text('Old schools'),
            value: SingingCharacter.Old,
            groupValue: _character,
            onChanged: (SingingCharacter value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.all(3.0),
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              border: Border.all(color: kBorder),
              borderRadius: BorderRadius.circular(10)),
          child: RadioListTile<SingingCharacter>(
            title: const Text('Tommy'),
            value: SingingCharacter.Tommy,
            groupValue: _character,
            onChanged: (SingingCharacter value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
