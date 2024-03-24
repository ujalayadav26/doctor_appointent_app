import 'package:flutter/material.dart';
class UpcomigSchedule extends StatelessWidget {
  const UpcomigSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("About Doctor",style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),),
        SizedBox(
          height: 15,
        ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 5),
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
        child:SizedBox(
         width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              ListTile(
              title:Text(
              "Dr. Doctor Name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,

              ),),
                subtitle: Text("Therapist"),
                trailing: CircleAvatar(
                  backgroundImage: NetworkImage("https://img.freepik.com/free-vector/doctor-holding-clipboard_23-2147789037.jpg?w=740&t=st=1711107049~exp=1711107649~hmac=174754e434f705fe3eecd9fd0bccee92df88a24225a11f95e59b7e5ab3bef9d0",
                  ),
                  radius: 25,
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal:15 ),
              child: Divider(
                thickness: 1,
                height: 20,
              ),),
              Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.calendar_month,
                        color: Colors.black54,),
                      SizedBox(
                        width: 5,
                      ),

                      Text(
                        "30/02/2001",
                        style: TextStyle(

                            color: Colors.black54

                        ),
                      ),



                    ],
                  ),
                  SizedBox(width: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.access_time_filled,
                        color: Colors.black54,),
                      SizedBox(
                        width: 5,
                      ),

                      Text(
                        "12:30 AM",
                        style: TextStyle(

                            color: Colors.black54

                        ),
                      ),



                    ],
                  ),
                  SizedBox(width: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.circle,
                        color: Colors.green,
                      size: 10,),
                      SizedBox(
                        width: 2,
                      ),

                      Text(
                        "Confirmed",
                        style: TextStyle(

                            color: Colors.black54

                        ),
                      ),



                    ],
                  ),

                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 150,
                      padding: EdgeInsets.symmetric(vertical:12 ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child:Text(
                          "Cancel",
                          style: TextStyle(
                        fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54

                          ),

                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 150,
                      padding: EdgeInsets.symmetric(vertical:12 ),
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child:Text(
                          "Reschedule",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white

                          ),

                        ),
                      ),
                    ),
                  ),





                ],
              ),
             SizedBox(
               height: 10,
             ),
            ],
          ),
        ),
      ),
        SizedBox(
          height: 10,
        ),
        Text("About Doctor",style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),),
        SizedBox(
          height: 15,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
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
          child:SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                ListTile(
                  title:Text(
                    "Dr. Doctor Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,

                    ),),
                  subtitle: Text("Therapist"),
                  trailing: CircleAvatar(
                    backgroundImage: NetworkImage("https://img.freepik.com/free-vector/doctor-holding-clipboard_23-2147789037.jpg?w=740&t=st=1711107049~exp=1711107649~hmac=174754e434f705fe3eecd9fd0bccee92df88a24225a11f95e59b7e5ab3bef9d0",
                    ),
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:15 ),
                  child: Divider(
                    thickness: 1,
                    height: 20,
                  ),),
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.calendar_month,
                          color: Colors.black54,),
                        SizedBox(
                          width: 5,
                        ),

                        Text(
                          "30/02/2001",
                          style: TextStyle(

                              color: Colors.black54

                          ),
                        ),



                      ],
                    ),
                    SizedBox(width: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.access_time_filled,
                          color: Colors.black54,),
                        SizedBox(
                          width: 5,
                        ),

                        Text(
                          "12:30 AM",
                          style: TextStyle(

                              color: Colors.black54

                          ),
                        ),



                      ],
                    ),
                    SizedBox(width: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.circle,
                          color: Colors.green,
                          size: 10,),
                        SizedBox(
                          width: 2,
                        ),

                        Text(
                          "Confirmed",
                          style: TextStyle(

                              color: Colors.black54

                          ),
                        ),



                      ],
                    ),

                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical:12 ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child:Text(
                            "Cancel",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54

                            ),

                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical:12 ),
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent.shade100,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child:Text(
                            "Reschedule",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white

                            ),

                          ),
                        ),
                      ),
                    ),





                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text("About Doctor",style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),),
        SizedBox(
          height: 15,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
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
          child:SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                ListTile(
                  title:Text(
                    "Dr. Doctor Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,

                    ),),
                  subtitle: Text("Therapist"),
                  trailing: CircleAvatar(
                    backgroundImage: NetworkImage("https://img.freepik.com/free-vector/doctor-holding-clipboard_23-2147789037.jpg?w=740&t=st=1711107049~exp=1711107649~hmac=174754e434f705fe3eecd9fd0bccee92df88a24225a11f95e59b7e5ab3bef9d0",
                    ),
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:15 ),
                  child: Divider(
                    thickness: 1,
                    height: 20,
                  ),),
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.calendar_month,
                          color: Colors.black54,),
                        SizedBox(
                          width: 5,
                        ),

                        Text(
                          "30/02/2001",
                          style: TextStyle(

                              color: Colors.black54

                          ),
                        ),



                      ],
                    ),
                    SizedBox(width: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.access_time_filled,
                          color: Colors.black54,),
                        SizedBox(
                          width: 5,
                        ),

                        Text(
                          "12:30 AM",
                          style: TextStyle(

                              color: Colors.black54

                          ),
                        ),



                      ],
                    ),
                    SizedBox(width: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.circle,
                          color: Colors.green,
                          size: 10,),
                        SizedBox(
                          width: 2,
                        ),

                        Text(
                          "Confirmed",
                          style: TextStyle(

                              color: Colors.black54

                          ),
                        ),



                      ],
                    ),

                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical:12 ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child:Text(
                            "Cancel",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54

                            ),

                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical:12 ),
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent.shade100,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child:Text(
                            "Reschedule",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white

                            ),

                          ),
                        ),
                      ),
                    ),





                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text("About Doctor",style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),),
        SizedBox(
          height: 15,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
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
          child:SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                ListTile(
                  title:Text(
                    "Dr. Doctor Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,

                    ),),
                  subtitle: Text("Therapist"),
                  trailing: CircleAvatar(
                    backgroundImage: NetworkImage("https://img.freepik.com/free-vector/doctor-holding-clipboard_23-2147789037.jpg?w=740&t=st=1711107049~exp=1711107649~hmac=174754e434f705fe3eecd9fd0bccee92df88a24225a11f95e59b7e5ab3bef9d0",
                    ),
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:15 ),
                  child: Divider(
                    thickness: 1,
                    height: 20,
                  ),),
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.calendar_month,
                          color: Colors.black54,),
                        SizedBox(
                          width: 5,
                        ),

                        Text(
                          "30/02/2001",
                          style: TextStyle(

                              color: Colors.black54

                          ),
                        ),



                      ],
                    ),
                    SizedBox(width: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.access_time_filled,
                          color: Colors.black54,),
                        SizedBox(
                          width: 5,
                        ),

                        Text(
                          "12:30 AM",
                          style: TextStyle(

                              color: Colors.black54

                          ),
                        ),



                      ],
                    ),
                    SizedBox(width: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.circle,
                          color: Colors.green,
                          size: 10,),
                        SizedBox(
                          width: 2,
                        ),

                        Text(
                          "Confirmed",
                          style: TextStyle(

                              color: Colors.black54

                          ),
                        ),



                      ],
                    ),

                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical:12 ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child:Text(
                            "Cancel",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54

                            ),

                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical:12 ),
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent.shade100,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child:Text(
                            "Reschedule",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white

                            ),

                          ),
                        ),
                      ),
                    ),





                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text("About Doctor",style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),),
        SizedBox(
          height: 15,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
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
          child:SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                ListTile(
                  title:Text(
                    "Dr. Doctor Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,

                    ),),
                  subtitle: Text("Therapist"),
                  trailing: CircleAvatar(
                    backgroundImage: NetworkImage("https://img.freepik.com/free-vector/doctor-holding-clipboard_23-2147789037.jpg?w=740&t=st=1711107049~exp=1711107649~hmac=174754e434f705fe3eecd9fd0bccee92df88a24225a11f95e59b7e5ab3bef9d0",
                    ),
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:15 ),
                  child: Divider(
                    thickness: 1,
                    height: 20,
                  ),),
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.calendar_month,
                          color: Colors.black54,),
                        SizedBox(
                          width: 5,
                        ),

                        Text(
                          "30/02/2001",
                          style: TextStyle(

                              color: Colors.black54

                          ),
                        ),



                      ],
                    ),
                    SizedBox(width: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.access_time_filled,
                          color: Colors.black54,),
                        SizedBox(
                          width: 5,
                        ),

                        Text(
                          "12:30 AM",
                          style: TextStyle(

                              color: Colors.black54

                          ),
                        ),



                      ],
                    ),
                    SizedBox(width: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.circle,
                          color: Colors.green,
                          size: 10,),
                        SizedBox(
                          width: 2,
                        ),

                        Text(
                          "Confirmed",
                          style: TextStyle(

                              color: Colors.black54

                          ),
                        ),



                      ],
                    ),

                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical:12 ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child:Text(
                            "Cancel",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54

                            ),

                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical:12 ),
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent.shade100,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child:Text(
                            "Reschedule",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white

                            ),

                          ),
                        ),
                      ),
                    ),





                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    ),
    );
  }
}
