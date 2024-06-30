import 'package:flutter/material.dart';
import 'package:app/pages/page.dart';
import 'package:app/pages/notes/notes.dart';
import 'package:app/pages/buy_and_sell/buy_and_sell.dart';
import 'package:app/pages/clubs/clubs.dart';
import 'package:app/pages/about/about.dart';
import 'package:app/pages/app_settings/app_settings.dart';
import 'package:app/pages/about_college/about_college.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget optionButtons(Widget nxtState,String label,String assetPath,double wf,double hf){
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0*wf,horizontal: 10.0*hf),
        child: ElevatedButton(
          onPressed: () => {Navigator.push(context,MaterialPageRoute(builder: (context) => nxtState),)},
          child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.0*wf,horizontal: 5.0*hf),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(assetPath,width: 40*wf,height: 40*hf,fit: BoxFit.cover,),
                  SizedBox(width: 10*wf,) ,
                  Text(label,style: TextStyle(fontSize: 15*hf,),)
                ],
              )
          ),
        ),
      ),
    );
  }Widget drawerItems(Widget _nxtState,String _label,String icn){
    return ListTile(
      title: Text(_label),
      onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => _nxtState));},
      leading: ImageIcon(AssetImage(icn)),

    );
  }
  @override
  Widget build(BuildContext context) {
    // 960*432
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double hfac = height/960;
    double wfac = width/432;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('SIT APP'),
        centerTitle: true,
      ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(decoration: BoxDecoration(color: Colors.blue),child: Center(child: Text('WELCOME',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),))),
              drawerItems(LostAndFound(),'Lost and Found',"assets/lostAndFound.png"),
              drawerItems(BuyAndSell(),'Buy and Sell',"assets/buyAndSell.png"),
              drawerItems(Notes(),'Notes',"assets/notes.png"),
              drawerItems(Clubs(),'Clubs',"assets/clubs.png"),
              drawerItems(Competition(),'Competitions',"assets/competition.png"),
              drawerItems(FriendsFeed(),'Friends Feed',"assets/friendsFeed.png"),
              drawerItems(VoiceOut(),'Voice Out',"assets/voiceOut.png"),
              drawerItems(Placements(),'Placements',"assets/placement.png"),
              drawerItems(AboutCollege(),'About College',"assets/aboutCollege.png"),
              //drawerItems(ProfileSettings(),'Profile Settings',"assets/profileSetting.png"),
              drawerItems(AppSettings(),'App Settings',"assets/appSettings.png"),
              drawerItems(AboutDev(),'About',"assets/about.png"),
            ],
          ),
        ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0*wfac,horizontal: 10.0*hfac),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Image.asset("assets/sit-ad-block.jpg"),
              SizedBox(height: 10,),
              Expanded(child: Container(color: Colors.red[900],child: Center(child: Image.asset('assets/microsoft-news-app.jpg'))))
            ]
      )
      ),
    );
  }
}
