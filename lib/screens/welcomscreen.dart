import 'package:flutter/material.dart';
import 'package:webteb2/screens/auth_screens/login_screen.dart';
import 'package:webteb2/screens/auth_screens/sing_up.dart';
import 'package:webteb2/screens/widgets/nav_widget.dart';
import 'package:webteb2/screens/widgets/txt_widegt.dart';
import 'package:webteb2/utls/consets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;

    return  Material(
      child: Container(
        width: width,
        height: height,
        padding:const  EdgeInsets.all(padding),
        child: Column(
          children: [
           const  SizedBox(height: 15,),

            Align(alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) =>const NaveBarRoot()));

              },
              child:  TextWidget(txt: "SKIP",fontsize: 20,txtColor: txtColor,fontweight: FontWeight.normal,),
            ),),

            Padding(padding:const EdgeInsets.all(2*padding),
            child: Image.asset("images/1.png",),
            ),
            const SizedBox(height: 50,),
            TextWidget(txt: "Doctors Appointment", txtColor: txtColor, fontsize: 35, fontweight: FontWeight.bold),
            TextWidget(txt: "Doctors Appointment", txtColor: Colors.black54, fontsize: 18, fontweight: FontWeight.normal),
            const SizedBox(height: 60,),


            //login button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Material(
                  color: txtColor,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context) =>const LoginScreen()));
                    },
                    child: Padding(padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                      child: TextWidget(txt: "Login ", txtColor: whiteColor, fontsize: 22, fontweight: FontWeight.bold),

                    ),

                  ),
                ),
                Material(
                  color: txtColor,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context) =>const SingUpScreen()));

                    },
                    child: Padding(padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                      child: TextWidget(txt: "Sing Up ", txtColor: whiteColor, fontsize: 22, fontweight: FontWeight.bold),

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
