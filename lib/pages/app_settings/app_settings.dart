import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AppSettings extends StatefulWidget {
  const AppSettings({Key? key}) : super(key: key);

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text('Settings'),
          centerTitle: true),
        body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            Row(
              children: [
                Icon(Icons.person,color: Colors.blueGrey,),
                SizedBox(width: 8,),
                Text("User",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ],
            ),
            Divider(height: 15,thickness: 2,),
            SizedBox(height: 10,),
            buildAccountOptionRow(context, "Edit Details"),
            buildAccountOptionRow(context, "Contacts"),
            buildAccountOptionRow(context, "Branch Details"),
            SizedBox(height: 40,),Row(
              children: [
                Icon(Icons.person,color: Colors.blueGrey,),
                SizedBox(width: 8,),
                Text("Account",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ],
            ),
            Divider(height: 15,thickness: 2,),
            SizedBox(height: 10,),
            buildAccountOptionRow(context, "Change password"),
            buildAccountOptionRow(context, "Content settings"),
            buildAccountOptionRow(context, "Social"),
            buildAccountOptionRow(context, "Language"),
            buildAccountOptionRow(context, "Privacy and security"),
            SizedBox(height: 40,),
            Row(
              children: [
                Icon(Icons.volume_up_outlined,color: Colors.blueGrey,),
                SizedBox(width: 8,),
                Text("Notifications",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ],
            ),
            Divider(height: 15,thickness: 2,),
            SizedBox(height: 10,),
            buildNotificationOptionRow("New for you", true),
            buildNotificationOptionRow("Account activity", false),
            SizedBox(
              height: 50,
            ),
            Center(
              child: ElevatedButton(
                // padding: EdgeInsets.symmetric(horizontal: 40),
                // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                child: Text("SIGN OUT",
                    style: TextStyle(
                        fontSize: 16, letterSpacing: 2.2, color: Colors.black)),
              ),
            )
          ],
        ),
      ),

    );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.blueGrey),
        ),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: Colors.blueGrey,
              value: isActive,
              onChanged: (bool val) {},
            ))
      ],
    );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Option 1"),
                    Text("Option 2"),
                    Text("Option 3"),
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close")),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
