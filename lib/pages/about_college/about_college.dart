import 'package:flutter/material.dart';

class AboutCollege extends StatefulWidget {
  const AboutCollege({Key? key}) : super(key: key);

  @override
  State<AboutCollege> createState() => _AboutCollegeState();
}

class _AboutCollegeState extends State<AboutCollege> {
  @override
  // Size size = MediaQuery.of(context).size;
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('About College',style: TextStyle(color: Color.fromARGB(255, 239, 239, 245)),),
          elevation: 0,
          actions: [
            IconButton(icon: Icon(Icons.search),onPressed: () {},)
          ],
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        // height: size.height * 0.35,
                        // width: size.width * 1,
                        child: Image.asset('assets/sit-ad-block.jpg')),
                    Center(child: Text("Siddaganga Institute of Technology",style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),),
                    SizedBox(height: 10,),
                    Text("Location:",style:TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
                    Text("Bengaluru - Honnavar Rd, Chandana Complex, Tumakuru, Karnataka 572103",style: TextStyle(fontSize: 25),),
                    SizedBox(height: 10,),
                    Text("Vision:",style:TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
                    Text("To develop young minds in a learning environment of high academic ambience by synergising spiritual values and technological competence.",style: TextStyle(fontSize: 25),),
                    SizedBox(height: 10,),
                    Text("Mission:",style:TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
                    Text(
                      "To continuously strive for the total development of students by educating them in state-of-the-art-technologies and helping them imbibe professional ethics and societal commitment, so that they emerge as competent professionals to meet the global challenges.",
                      style: TextStyle(fontSize: 25),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.web, size: 40),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.language,size: 40,),
                          onPressed: () {},
                        ),
                      ],
                    )
                  ]),
            ),
          ),
        ));
  }
}
