import 'package:doctor_app/screen/login_screen.dart';

import 'package:doctor_app/widgets/navbar_roots.dart';
import 'package:flutter/material.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child:Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
        padding:  EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 15,),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => NavBarRoots()
                  ));
                },
                child: Text("Skip",style: TextStyle(
                  color: Colors.deepPurpleAccent.shade100,
                  fontSize: 20
                ),),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(padding: EdgeInsets.all(20),
            child: Image(
              image: NetworkImage("https://img.freepik.com/free-vector/doctor-giving-treatment-boy_1308-73334.jpg?t=st=1711090086~exp=1711090686~hmac=6a8a410029cf02dcf91528683ba60015585d95f6a72bd1555cc04f698a96c99c"),
            ),),
            SizedBox(
              height: 50,
            ),
            Text('Doctor Appointment',
            style: TextStyle(
              color: Colors.deepPurpleAccent.shade100,
              fontSize: 35,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 2
            ),),
            SizedBox(
              height: 10 ,
            ),
            Text(' Appoint Your Doctor',
              style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize:18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  wordSpacing: 2
              ),),
            SizedBox(
              height: 40 ,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Colors.deepPurpleAccent.shade100,
                  borderRadius:BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(
                      //          builder: (context) =>
                      //      ));
                    },
                    child: Padding(padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 40,
                    ),
                      child: Text("Log In",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                      ),),
                    ),
                  ),

                ),
                Material(
                  color: Colors.deepPurpleAccent.shade100,
                  borderRadius:BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                       Navigator.push(context, MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                       ));
                    },
                    child: Padding(padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 40,
                    ),
                      child: Text("Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22
                        ),),
                    ),
                  ),

                ),
              ],
            )
          ],

        ),
      ),
    );
  }
}
