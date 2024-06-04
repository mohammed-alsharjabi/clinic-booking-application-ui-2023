import 'package:flutter/material.dart';
import 'package:webteb2/screens/appointment_screen.dart';
import 'package:webteb2/screens/widgets/add_card.dart';
import 'package:webteb2/screens/widgets/doctor_profile.dart';
import 'package:webteb2/utls/consets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List symptoms = [
    "Temperature",
    "Snuffle",
    "Fever",
    "Cough",
    "Cold",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 43),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Hello MA",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/1.png"),
                ),
              ],
            )),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            AddCard(
                cardProperties: CardProperties(
                    title: "Clinic Visit",
                    subtitle: "Make an Appointment ",
                    cardColor: txtColor,txtColor: whiteColor,
                    icon: const Icon(
                      Icons.add,
                      size: 45,
                      color: txtColor,
                    )),
                fun: () {}),

            AddCard(
                cardProperties: CardProperties(
                    title: "Home Visit",
                    subtitle: "Make an Appointment ",
                    txtColor: txtColor,
                    cardColor: whiteColor,
                    icon: const Icon(
                      Icons.home_filled,
                      size: 45,
                      color: txtColor,
                    )),
                fun: () {}),


          ],
        ),

        const SizedBox(height: 15,),
        const  Padding(padding: EdgeInsets.only(left: 15),
          child: Text(
            "What are symptoms",
            style:  TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: Colors.black54),
          ),),


        SizedBox(
          height: 70,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: const Color(0xfff4f6fa),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          spreadRadius: 2,
                          color: Colors.black12,
                        )
                      ]),
                  child: Center(
                    child: Text(
                      symptoms[index],
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                  ),
                );
              }),
        ),


        const SizedBox(height: 10,),
        const  Padding(padding: EdgeInsets.only(left: 15),
          child: Text(
            "Popular Doctor ",
            style:  TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: Colors.black54),
          ),),


        const SizedBox(height: 5,),
            GridView.builder(
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: 4,
              shrinkWrap: true,
              physics:const NeverScrollableScrollPhysics(),
              itemBuilder: (context,index){
                return
                  doctorProfile(image: images[index], name: doctorName[index], job: "Therapist", rate: "4.2",fun: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const  AppointmentScreen()));

              });
              },

            )



      ]

      ),
    );
  }
}
