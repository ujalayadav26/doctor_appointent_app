import 'package:doctor_app/widgets/chat_sample.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.purpleAccent.shade100,
          leadingWidth: 30,
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage("https://img.freepik.com/free-vector/hand-drawn-doctor-cartoon-illustration_23-2150680327.jpg?t=st=1711106956~exp=1711107556~hmac=fb93c09842522ee0f07430ad4efe1f777f1aeac52003b0076ed0a0fbe58a6025"),
           radius: 27,
              ),
              SizedBox(width: 6,),
              Padding(padding: EdgeInsets.only(top: 10),
               child: Text(
                "Dr. Name ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,

                ),

              )),

            ],
          ),
          actions: [
            Padding(padding: EdgeInsets.only(top: 8,right: 15),
            child: Icon(Icons.call,
            color: Colors.white,),),
            Padding(padding: EdgeInsets.only(top: 8,right: 10),
              child: Icon(Icons.video_call,
                color: Colors.white,),),
            Padding(padding: EdgeInsets.only(top: 8,right: 10),
              child: Icon(Icons.more_vert,
                color: Colors.white,),),
          ],

        ),
      ),
      body: ListView.builder(
        itemCount: 10,
          padding: EdgeInsets.only(top: 20,right: 15,bottom: 80,left: 15),
          itemBuilder: (context,index) => ChatSample()),
      bottomSheet: Container(
        height:65 ,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 10
            )
          ]
        ),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 8),
            child: Icon(
              Icons.add,
              size: 30,
            ),),
            Padding(padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.emoji_emotions,
                color: Colors.amber,
                size: 30,
              ),),
            Padding(padding: EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width/1.6,
                child: TextField(
                decoration: InputDecoration(
                  hintText: "Type something",
                  border: InputBorder.none
                ),
              ),
              )
            ),
            Spacer(),
            Padding(padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.send,
                size: 30,
                color: Colors.purpleAccent.shade100,
              ),)
          ],
        ),
      ),
    );
  }
}
