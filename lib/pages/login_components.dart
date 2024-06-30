import 'package:flutter/material.dart';
import 'package:app/pages/home.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height: 20,),
                  Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 30,),),
                  SizedBox(height: 30,),
                  Text("Siddaganga Institute of Technology, Tumakuru \t Karnataka, 572103",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 17,
                    ),),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/loginPage.png")
                    )
                ),
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));},
                    shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(30)),
                    child: Text("Login",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                  ),
                  // creating the signup button
                  SizedBox(height: 20,),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));},
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                  )
                ],
              )
            ],
          ),

        ),
      ),
    );
  }
}

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text('SIGNUP'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Create a new account",style: TextStyle(fontSize: 16,color: Colors.grey[700]),),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: <Widget>[
                      inputFile(label: "Username"),
                      inputFile(label: "Email"),
                      inputFile(label: "Password", abscureText: true),
                      inputFile(label: "Confirm Password", abscureText: true),
                    ],
                  ),
                ),
                // padding
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:60),
                  child:Container(
                    padding: EdgeInsets.only(left: 1),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border(
                          bottom: BorderSide(color:Colors.black),
                          top: BorderSide(color:Colors.black),
                          left: BorderSide(color:Colors.black),
                          right: BorderSide(color:Colors.black),
                        )
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 50,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                      color: Colors.blue,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),


                Container(
                  // padding: EdgeInsets.only(top: 10),
                  height: 2,
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //       image: AssetImage("assets/homePage.png"),
                  //       fit: BoxFit.fitHeight
                  //   ),
                  // ),
                )
              ],
            ))
          ],
        ),
      ),
    );
    // );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text('LOGIN'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: IconButton(onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Login to your account",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[700]
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: <Widget>[
                      inputFile(label: "Email"),
                      inputFile(label: "Password", abscureText: true),
                    ],
                  ),
                ),
                // padding
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:40),
                  child:Container(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border(
                          bottom: BorderSide(color:Colors.black),
                          top: BorderSide(color:Colors.black),
                          left: BorderSide(color:Colors.black),
                          right: BorderSide(color:Colors.black),
                        )
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                      },
                      color: Colors.blue,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Text("Don't have an account"),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SignupPage()));
                      },
                      child: Text(
                        " Signup",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 100),
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/homePage.png"),
                        fit: BoxFit.fitHeight
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}


// we will be creating a widget for text field
Widget inputFile({label, abscureText=false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.black87
        ),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: false,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0,
              horizontal: 10,),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)
            )
        ),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
