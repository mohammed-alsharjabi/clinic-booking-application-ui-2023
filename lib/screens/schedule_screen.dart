import 'package:flutter/material.dart';
import 'package:webteb2/screens/schedule_screen/upcoming_screen.dart';
import 'package:webteb2/utls/consets.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreen();
}

class _ScheduleScreen extends State<ScheduleScreen> {
  int _buttonIndex = 0;
  double horizontal=20;
  double vertical=10;


  final _ScheduleWidgets =  [
    UpcomingScreen(),
    Center(child: Text("Completed"),),
    Center(child: Text("Canceled"),),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          const   Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child:  Text(
                "Schedule",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
              ),

            ),

            Container(
              padding: const EdgeInsets.all(10),
              margin:  EdgeInsets.symmetric(horizontal: horizontal/2),
              decoration: BoxDecoration(
                color:const Color(0xfff4f6fa),
                borderRadius: BorderRadius.circular(10),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex=0;
                      });
                    },
                    child: Container(
                      padding:  EdgeInsets.symmetric(vertical: vertical,horizontal: horizontal),
                      decoration: BoxDecoration(
                        color: _buttonIndex==0?txtColor:Colors.transparent,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:   Text(
                        "Upcoming",
                        style: TextStyle(color: _buttonIndex==0?whiteColor:Colors.black54,fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex=1;
                      });
                    },
                    child: Container(
                      padding:  EdgeInsets.symmetric(vertical: vertical,horizontal: horizontal),
                      decoration: BoxDecoration(
                        color: _buttonIndex==1?txtColor:Colors.transparent,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:   Text(
                        "Completed",
                        style: TextStyle( color: _buttonIndex==1?whiteColor:Colors.black54,fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex=2;
                      });
                    },
                    child: Container(
                      padding:  EdgeInsets.symmetric(vertical: vertical,horizontal: horizontal),
                      decoration: BoxDecoration(
                          color: _buttonIndex==2?txtColor:Colors.transparent,
                          borderRadius: BorderRadius.circular(10)

                      ),
                      child:   Text(
                        "Canceled",
                        style: TextStyle(color: _buttonIndex==2?whiteColor:Colors.black54,fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),

                ],
              ),

            ),

          const   SizedBox(height: 30,),
            _ScheduleWidgets[_buttonIndex],
          ],
        ),
      ),
    );
  }
}

