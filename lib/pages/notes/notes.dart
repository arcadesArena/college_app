import 'package:app/pages/notes/announcements.dart';
import 'package:flutter/material.dart';
class Notes extends StatefulWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
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
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AnnouncementsPage()));
                          },
                          color: Colors.grey[50],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: Text(
                            "Announcements",
                            style: TextStyle(
                                color: Colors.green,
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
                          onPressed: () {},
                          color: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: Text(
                            "Notes",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 50)),
                      ]),
                  SizedBox(
                    height: 50,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          isExpanded: true,
                          value: dropdownvalue,
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      children: <Widget>[
                        Card(
                          elevation: 5,
                          shadowColor: Colors.black,
                          color: Colors.grey[100],
                          child: SizedBox(
                            width: 400,
                            height: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  //CircleAvatar
                                  SizedBox(
                                    height: 5,
                                  ), //SizedBox
                                  Text(
                                    'C PROGRAMMING : UNIT 5',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ), //Textstyle
                                  ), //Text
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text('User-defined Functions')
                                ],
                              ), //Column
                            ), //Padding
                          ), //SizedBox
                        ),
                        Card(
                          elevation: 5,
                          shadowColor: Colors.black,
                          color: Colors.grey[100],
                          child: SizedBox(
                            width: 400,
                            height: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  //CircleAvatar
                                  SizedBox(
                                    height: 5,
                                  ), //SizedBox
                                  Text(
                                    'C PROGRAMMING : UNIT 4',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ), //Textstyle
                                  ), //Text
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text('Character Arrays and Strings')
                                ],
                              ), //Column
                            ), //Padding
                          ), //SizedBox
                        ),
                        Card(
                          elevation: 5,
                          shadowColor: Colors.black,
                          color: Colors.grey[100],
                          child: SizedBox(
                            width: 400,
                            height: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  //CircleAvatar
                                  SizedBox(
                                    height: 5,
                                  ), //SizedBox
                                  Text(
                                    'C PROGRAMMING : UNIT 3',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ), //Textstyle
                                  ), //Text
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text('Arrays')
                                ],
                              ), //Column
                            ), //Padding
                          ), //SizedBox
                        ),
                        Card(
                          elevation: 5,
                          shadowColor: Colors.black,
                          color: Colors.grey[100],
                          child: SizedBox(
                            width: 400,
                            height: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  //CircleAvatar
                                  SizedBox(
                                    height: 5,
                                  ), //SizedBox
                                  Text(
                                    'C PROGRAMMING : UNIT 2',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ), //Textstyle
                                  ), //Text
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text('Decision Making and Branching')
                                ],
                              ), //Column
                            ), //Padding
                          ), //SizedBox
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
