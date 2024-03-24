import 'package:doctor_app/screen/chat_screen.dart';
import 'package:flutter/material.dart';
class MessageScreen extends StatelessWidget {
   MessageScreen({super.key});
  List<String>imgs = [
    "https://img.freepik.com/free-vector/hand-drawn-doctor-cartoon-illustration_23-2150680327.jpg?t=st=1711106956~exp=1711107556~hmac=fb93c09842522ee0f07430ad4efe1f777f1aeac52003b0076ed0a0fbe58a6025",
    "https://img.freepik.com/free-vector/vector-3d-doctor_1441-6.jpg?t=st=1711106956~exp=1711107556~hmac=2fba52bf29acafcaa50b8218d0f4960d15534655e8a1ecd0fa1da81048708a7f",
    "https://img.freepik.com/free-vector/doctor-holding-clipboard_23-2147789037.jpg?w=740&t=st=1711107049~exp=1711107649~hmac=174754e434f705fe3eecd9fd0bccee92df88a24225a11f95e59b7e5ab3bef9d0",
    "https://img.freepik.com/free-vector/vector-3d-doctor-woman_1441-16.jpg?t=st=1711107007~exp=1711107607~hmac=868789af5ac97a6103bbbef49e06f3e762fc2fdade1240e964b6dfba21cf07ff""https://img.freepik.com/free-vector/hand-drawn-doctor-cartoon-illustration_23-2150680327.jpg?t=st=1711106956~exp=1711107556~hmac=fb93c09842522ee0f07430ad4efe1f777f1aeac52003b0076ed0a0fbe58a6025",
    "https://img.freepik.com/free-vector/vector-3d-doctor_1441-6.jpg?t=st=1711106956~exp=1711107556~hmac=2fba52bf29acafcaa50b8218d0f4960d15534655e8a1ecd0fa1da81048708a7f",
    "https://img.freepik.com/free-vector/doctor-holding-clipboard_23-2147789037.jpg?w=740&t=st=1711107049~exp=1711107649~hmac=174754e434f705fe3eecd9fd0bccee92df88a24225a11f95e59b7e5ab3bef9d0",
    "https://img.freepik.com/free-vector/vector-3d-doctor-woman_1441-16.jpg?t=st=1711107007~exp=1711107607~hmac=868789af5ac97a6103bbbef49e06f3e762fc2fdade1240e964b6dfba21cf07ff"

  ];

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          "Messages ",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),

        ),
      ),
         Padding(
             padding: EdgeInsets.symmetric(horizontal: 15),
           child:  Container(
               padding:
               EdgeInsets.symmetric(horizontal: 15,),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.white,
                 boxShadow: [
                   BoxShadow(
                     color: Colors.black12,
                     blurRadius: 4,
                     spreadRadius: 2
                   )
                 ]

               ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   width: 200,
                   child: Padding(
                     padding: EdgeInsets.symmetric(horizontal: 15),
                     child: TextField(
                       decoration: InputDecoration(
                         hintText: "Search",
                         border: InputBorder.none
                       ),
                     ),
                   ),
                 ),
                 Icon(Icons.search,
                   color: Colors.purpleAccent.shade100,)
               ],
             ),

             ),
           ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text("Active Now",style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: 7,
                shrinkWrap: true,
                itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 10
                      )
                    ]
                  ),
                  child: Stack(
                    textDirection: TextDirection.rtl,
                    children: [
                      Center(
                        child: Container(
                          height: 65,
                            width: 65,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child:Image.network(imgs[index],
                            fit: BoxFit.cover,) ,

                          ),
                        ),
                      ),
                  Container(
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.all(3),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  ),
                     child: Container(

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                      )
                  ),

                    ],
                  ),

                );
            }),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text("Recent chat",style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
              itemCount: 7,
              shrinkWrap: true,
              itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: ListTile(

                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(
                       builder: (context)=> ChatScreen()));
                 }
                  ,
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(imgs[index]),
                  ),
                  title: Text(
                    "Dr. Doctor Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                  subtitle: Text("hello doctor are your there ?",
                      maxLines:1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54
                  ),),
                  trailing: Text(

                    "12:45",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54
                    ),
                  ),

                  ),
              );
              })
        ],
      ),

    );
  }
}
