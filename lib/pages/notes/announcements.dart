import 'package:flutter/material.dart';


class AnnouncementsPage extends StatefulWidget {
  const AnnouncementsPage({Key? key}) : super(key: key);
  @override
  State<AnnouncementsPage> createState() => _AnnouncementsPageState();
}

class _AnnouncementsPageState extends State<AnnouncementsPage> {
  String dropdownvalue = 'C Programming';
  var items = [
    'Engineering Mechanics',
    'C Programming',
    'Fields and Waves',
    'Communication Systems I',
    'Statics and Probablity'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Notes",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Welcome to the Notes Section...",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 17,
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        MaterialButton(
                          minWidth: 200,
                          height: 50,
                          onPressed: () {},
                          color: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: Text(
                            "Announcements",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 50, horizontal: 5)),
                        MaterialButton(
                          minWidth: 100,
                          height: 50,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          color: Colors.grey[100],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: Text(
                            "Notes",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 50)),
                      ]),
                  SizedBox(
                    child: Column(
                      children: <Widget>[
                        Card(
                            elevation: 5,
                            shadowColor: Colors.black,
                            color: Colors.grey[100],
                            child: SizedBox(
                              width: 400,
                              height: 130,
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 25),
                                child: Column(children: [
                                  //CircleAvatar
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: CircleAvatar(
                                              radius: 25,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.green[300],
                                                backgroundImage:
                                                AssetImage("assets/user1.png"),
                                                radius: 100,
                                              ), //CircleAvatar
                                            ),
                                          )),
                                      SizedBox(
                                          child: Column(children: <Widget>[
                                            Text(
                                              '''Maths Quiz 3 on Monday''',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                              ), //Textstyle
                                            ), //Text
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                                '''Syllabus is VECTOR CALCULUS \nTill- Curl physical interpretation'''),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text('~KC'),
                                          ]))
                                    ],
                                  ),
                                ]), //Padding
                              ),
                            ) //SizedBox
                        ),Card(
                            elevation: 5,
                            shadowColor: Colors.black,
                            color: Colors.grey[100],
                            child: SizedBox(
                              width: 400,
                              height: 130,
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 25),
                                child: Column(children: [
                                  //CircleAvatar
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: CircleAvatar(
                                              radius: 25,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.green[300],
                                                backgroundImage:
                                                AssetImage("assets/Asset 1.png"),
                                                radius: 100,
                                              ), //CircleAvatar
                                            ),
                                          )),
                                      SizedBox(
                                          child: Column(children: <Widget>[
                                            Text(
                                              '''No Class at 11:30 AM ''',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                              ), //Textstyle
                                            ), //Text
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                                ''' '''),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text('~Mansi'),
                                          ]))
                                    ],
                                  ),
                                ]), //Padding
                              ),
                            ) //SizedBox
                        ),Card(
                            elevation: 5,
                            shadowColor: Colors.black,
                            color: Colors.grey[100],
                            child: SizedBox(
                              width: 400,
                              height: 130,
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 25),
                                child: Column(children: [
                                  //CircleAvatar
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: CircleAvatar(
                                              radius: 25,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.green[300],
                                                backgroundImage:
                                                AssetImage("assets/Asset 2.png"),
                                                radius: 100,
                                              ), //CircleAvatar
                                            ),
                                          )),
                                      SizedBox(
                                          child: Column(children: <Widget>[
                                            Text(
                                              '''CIPE class at GJCB 308''',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                              ), //Textstyle
                                            ), //Text
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                                '''Class at 10:30 AM.'''),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text('~CR'),
                                          ]))
                                    ],
                                  ),
                                ]), //Padding
                              ),
                            ) //SizedBox
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
