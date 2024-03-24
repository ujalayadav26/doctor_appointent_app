import 'package:doctor_app/screen/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
               Padding(padding: EdgeInsets.all(20),
                 child: Image(image: NetworkImage("https://img.freepik.com/free-vector/doctor-giving-treatment-boy_1308-73334.jpg?t=st=1711090086~exp=1711090686~hmac=6a8a410029cf02dcf91528683ba60015585d95f6a72bd1555cc04f698a96c99c"),),
               ),
            SizedBox(
              height: 10,
            ),
            Padding(padding: EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Enter Username'),
                  prefixIcon: Icon(Icons.person)
                ),
              ),
            ),
               Padding(padding: EdgeInsets.all(12),
                 child: TextField(
                   obscureText: passToggle?true:false,
                   decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       label: Text('Enter Passward'),
                       prefixIcon: Icon(Icons.lock),
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
                   ),
                 ),
               ),
            SizedBox(
              height: 20,
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
                           child: Text("Log In",
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
            SizedBox(
              height: 20,
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text('Do not have any account?',
                 style: TextStyle(
                   fontSize: 14,
                   fontWeight: FontWeight.w500,
                   color: Colors.black
                 ),),
                 TextButton(
                     onPressed: (){
    Navigator.push(context, MaterialPageRoute(
             builder: (context) => SignupScreen(),
         ));
    },

                     child: Text('Create Account',
                       style: TextStyle(
                           fontSize: 16,
                           fontWeight: FontWeight.bold,
                           color: Colors.purpleAccent.shade100
                       ),))
               ],
           ),

             ],
           ),
          ),
        ),
    );
  }
}
