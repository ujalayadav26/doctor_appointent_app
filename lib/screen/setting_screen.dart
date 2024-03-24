import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.only(top: 50,left: 20,right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
        "Settings",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 28,
        ),
        ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
                backgroundImage: NetworkImage("https://img.freepik.com/free-vector/hand-drawn-doctor-cartoon-illustration_23-2150680327.jpg?t=st=1711106956~exp=1711107556~hmac=fb93c09842522ee0f07430ad4efe1f777f1aeac52003b0076ed0a0fbe58a6025",)
      
            ),
            title:Text(
              "Dr. Doctor Name",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 23,
      
              ),),
            subtitle: Text("profile"),
          ),
          Divider(height: 50,),
          ListTile(
            onTap:
            (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                shape: BoxShape.circle,
      
              ),
              child: Icon(
                CupertinoIcons.person,
                color: Colors.blue,
              ),
            ),
            title:  Text(
                "Profile",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
      
                ),),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap:
                (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade100,
                shape: BoxShape.circle,
      
              ),
              child: Icon(
                Icons.notifications_none_outlined,
                color: Colors.deepPurple,
              ),
            ),
            title:  Text(
              "Notification",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
      
              ),),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap:
                (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                shape: BoxShape.circle,
      
              ),
              child: Icon(
                Icons.privacy_tip_outlined,
                color: Colors.deepOrange,
              ),
            ),
            title:  Text(
              "Privacy",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
      
              ),),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap:
                (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                shape: BoxShape.circle,
      
              ),
              child: Icon(
                Icons.settings_outlined,
                color: Colors.green,
              ),
            ),
            title:  Text(
              "General",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
      
              ),),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap:
                (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.pink.shade100,
                shape: BoxShape.circle,
      
              ),
              child: Icon(
                Icons.info_outline,
                color: Colors.pinkAccent,
              ),
            ),
            title:  Text(
              "About Us",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
      
              ),),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          
          Divider(
            height:40 ,
          ),
          ListTile(
            onTap:
                (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.brown.shade100,
                shape: BoxShape.circle,
      
              ),
              child: Icon(
                Icons.logout_outlined,
                color: Colors.brown,
              ),
            ),
            title:  Text(
              "Log Out",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
      
              ),),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
        ],
      ),),
    );
  }
}
