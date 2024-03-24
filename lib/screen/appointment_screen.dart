import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AppointmentScreen extends StatelessWidget {
  List<String> imgs = [
    "https://img.freepik.com/free-vector/hand-drawn-doctor-cartoon-illustration_23-2150680327.jpg?t=st=1711106956~exp=1711107556~hmac=fb93c09842522ee0f07430ad4efe1f777f1aeac52003b0076ed0a0fbe58a6025",
    "https://img.freepik.com/free-vector/vector-3d-doctor_1441-6.jpg?t=st=1711106956~exp=1711107556~hmac=2fba52bf29acafcaa50b8218d0f4960d15534655e8a1ecd0fa1da81048708a7f",
    "https://img.freepik.com/free-vector/doctor-holding-clipboard_23-2147789037.jpg?w=740&t=st=1711107049~exp=1711107649~hmac=174754e434f705fe3eecd9fd0bccee92df88a24225a11f95e59b7e5ab3bef9d0",
    "https://img.freepik.com/free-vector/vector-3d-doctor-woman_1441-16.jpg?t=st=1711107007~exp=1711107607~hmac=868789af5ac97a6103bbbef49e06f3e762fc2fdade1240e964b6dfba21cf07ff"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage("https://img.freepik.com/free-vector/hand-drawn-doctor-cartoon-illustration_23-2150680327.jpg?t=st=1711106956~exp=1711107556~hmac=fb93c09842522ee0f07430ad4efe1f777f1aeac52003b0076ed0a0fbe58a6025"),

                    ),
                    SizedBox(height: 15,),
                    Text(
                      "Dr.Doctor Name",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 23,
                        color: Colors.white
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "Therapist",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            shape: BoxShape.circle,

                          ),
                          child: Icon(
                            Icons.call,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          shape: BoxShape.circle,

                        ),
                          child: Icon(
                          CupertinoIcons.chat_bubble_text_fill,
                          color: Colors.white,
                          size: 25,
                        ),
                        )
                      ],
                    )
                  ],
                ),

              ),


                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height /1.5,
              width: double.infinity,
              
                padding: EdgeInsets.only(
                  top: 20,
                  left: 15
                ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),

                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " About Doctor ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,

                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54
                  ),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        "Reviews",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,

                        ),
                      ),
                      SizedBox(width: 10,),
                      Icon(Icons.star,
                        color: Colors.amber,),
                      Text(
                        "4.8",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize:16,

                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        "(123)",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                           color: Colors.grey.shade500
                        ),
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: (){},
                          child: Text("See all",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.purpleAccent.shade100
                          ),))
                    ],
                  ),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context,index){
                        return Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.symmetric(vertical: 5 ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                spreadRadius: 2
                              )
                            ]

                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width /1.4,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: NetworkImage(imgs[index]),
                                  ),
                                  title: Text("Dr Name",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),),
                                  subtitle: Text('1 day ago'),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star,color: Colors.amber,),
                                      Text(
                                        "4.7",
                                        style: TextStyle(
                                           color: Colors.black54
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              maxLines:2,
                              overflow:TextOverflow.ellipsis,
                              " Many thanks to Dr. Ram ,He is great person and kind.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                            style: TextStyle(
                              color: Colors.black54,
                            ),),
                          )
                              ],
                            ),
                          ),
                        );
                        }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
              Text(
                "Location",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,

                ),
              ),
                  ListTile(
                    leading: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,

                      ),
                      child: Icon(
                        Icons.location_on,
                        color: Colors.purpleAccent.shade100,
                        size: 30,
                      ),
                    ),
                    title:  Text(
                        "New York ,medical center",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )

                        ),
                    subtitle:  Text(
                        "address line of the medical center",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.grey.shade400,

                        ),
                    ),
                  )


                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
              blurRadius: 4,
              spreadRadius: 2
            ),

          ]
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Consultation Price",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                Text(
                  "\$100",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black54,

                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: (){},
              child: Container(
               width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  color: Colors.purpleAccent.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child:  Text(
                      "Book Appointment ",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 18,

                      ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
