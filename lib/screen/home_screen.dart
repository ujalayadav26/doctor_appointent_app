import 'package:doctor_app/screen/appointment_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> symptoms = ["Temperature", "Snuffle", "fever", "Cough", "Cold"];
  List<String> imgs = [
    "https://img.freepik.com/free-vector/hand-drawn-doctor-cartoon-illustration_23-2150680327.jpg?t=st=1711106956~exp=1711107556~hmac=fb93c09842522ee0f07430ad4efe1f777f1aeac52003b0076ed0a0fbe58a6025",
    "https://img.freepik.com/free-vector/vector-3d-doctor_1441-6.jpg?t=st=1711106956~exp=1711107556~hmac=2fba52bf29acafcaa50b8218d0f4960d15534655e8a1ecd0fa1da81048708a7f",
    "https://img.freepik.com/free-vector/doctor-holding-clipboard_23-2147789037.jpg?w=740&t=st=1711107049~exp=1711107649~hmac=174754e434f705fe3eecd9fd0bccee92df88a24225a11f95e59b7e5ab3bef9d0",
    "https://img.freepik.com/free-vector/vector-3d-doctor-woman_1441-16.jpg?t=st=1711107007~exp=1711107607~hmac=868789af5ac97a6103bbbef49e06f3e762fc2fdade1240e964b6dfba21cf07ff"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Hello Alex',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 100,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(imgs[0]), // Fixed
                )
              ],
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.purpleAccent.shade100,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.black26, spreadRadius: 4)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Icon(
                          Icons.add,
                          color: Colors.purpleAccent.shade100,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Clinic Visit',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Make an Apppointment',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.black26, spreadRadius: 4)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.home_filled,
                          color: Colors.purpleAccent.shade100,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Home Visit',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Call the doctor at home',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "What are your symptoms",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 23,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 70,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: symptoms.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              spreadRadius: 2)
                        ]),
                    child: Center(
                      child: Text(
                        symptoms[index],
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  "Popular Doctor",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 23,
                  ),
                ),
              ),
            ],
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: imgs.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(
                      builder:(context)=> AppointmentScreen()));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(imgs[index]),
                      ),
                      Text(
                        "Dr. Doctor Name",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,

                        ),
                      ),
                      Text(
                        "Therapist",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                         color: Colors.grey.shade600
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star,color: Colors.amber,),


                          Text(
                            "4.9",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,

                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}