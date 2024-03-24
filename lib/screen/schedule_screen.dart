import 'package:doctor_app/widgets/upcoming_schedule.dart';
import 'package:flutter/material.dart';
class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int _buttonIndex = 0;
  final _ScheduleWidgets =[
    UpcomigSchedule(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
        child:Text(
          "Schedule",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 30,

          ),
      ),),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex =0;
                      });
                    },
                    child:  Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 15,vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _buttonIndex ==0 ? Colors.purpleAccent.shade100:Colors.transparent,
                        ),
                      child:Text(
                        "Upcoming",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: _buttonIndex ==0 ? Colors.white:Colors.black38,

                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex =1;
                      });
                    },
                    child:  Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 15,vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: _buttonIndex ==1 ? Colors.purpleAccent.shade100:Colors.transparent,

                      ),
                      child:Text(
                        "Completed",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: _buttonIndex ==1? Colors.white:Colors.black38,

                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex =2;
                      });
                    },
                    child:  Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 15,vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: _buttonIndex == 2 ? Colors.purpleAccent.shade100:Colors.transparent,

                      ),
                      child:Text(
                        "Canceled",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: _buttonIndex ==2 ? Colors.white:Colors.black38,

                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _ScheduleWidgets[_buttonIndex],
          ],
      ),),
    );
  }
}
