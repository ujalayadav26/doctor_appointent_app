import 'package:doctor_app/screen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Image(
                  image: NetworkImage(
                      "https://img.freepik.com/free-vector/doctor-giving-treatment-boy_1308-73334.jpg?t=st=1711090086~exp=1711090686~hmac=6a8a410029cf02dcf91528683ba60015585d95f6a72bd1555cc04f698a96c99c"),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                  padding: EdgeInsets.all(12),
                  child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Full Name'),
                        prefixIcon: Icon(Icons.person),
                      ))),
              Padding(
                  padding: EdgeInsets.all(12),
                  child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Email Address'),
                        prefixIcon: Icon(Icons.email),
                      ))),
              Padding(
                  padding: EdgeInsets.all(12),
                  child: TextField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Phone Number'),
                    prefixIcon: Icon(Icons.phone),
                  ))),
              Padding(
                  padding: EdgeInsets.all(12),
                  child: TextField(
                    obscureText: passToggle? true:false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Email Passward'),
                        prefixIcon: Icon(Icons.phone),
                        suffixIcon: InkWell(
                          onTap: (){
                            if (passToggle == true){
                              passToggle = false;
                            }else{
                              passToggle = true;
                            }
                            setState(() {

                            });
                          },
                          child: passToggle
                              ? Icon(CupertinoIcons.eye_slash_fill)
                              :Icon(CupertinoIcons.eye_fill),
                        )
                      ))),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
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
                        child: Center(
                          child: Text("Create Account",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22
                            ),),
                        ),
                      ),
                    ),

                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have account?',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                    ),),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => LoginScreen( ),
                        ));
                      },

                      child: Text('Log In',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.purpleAccent.shade100
                        ),))
                ],
              ),
            ],
          ),
        )));
  }
}
