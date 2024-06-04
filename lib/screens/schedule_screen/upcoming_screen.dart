import 'package:flutter/material.dart';

import '../../utls/consets.dart';

class UpcomingScreen extends StatefulWidget {
  const UpcomingScreen({super.key});

  @override
  State<UpcomingScreen> createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
     child: Column(
       children: [
         personScheduleCard(title:  "About Doctor",name: doctorName[0], profile: images[0],funCancel: (){},funOk: (){}),
         personScheduleCard(title:  "About Doctor",name: doctorName[1], profile: images[1],funCancel: (){},funOk: (){}),
         personScheduleCard(title:  "About Doctor",name: doctorName[2], profile: images[2],funCancel: (){},funOk: (){}),
         personScheduleCard(title:  "About Doctor",name: doctorName[3], profile: images[3],funCancel: (){},funOk: (){}),

       ],
     ),
      ),
    );
  }
}

personScheduleCard({ required title, required String name,required String profile,VoidCallback ?funOk,VoidCallback ?funCancel}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
       Text(
       title,
        style:const  TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              spreadRadius: 2,
            )
          ],
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              ListTile(
                title:  Text(
               name,
                  style:const  TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text("Therapist"),
                trailing: CircleAvatar(
                  backgroundImage: AssetImage(profile),
                  radius: 25,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Divider(
                  height: 20,
                  thickness: 1,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.calendar_month,
                    color: Colors.black54,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "12/01/2024",
                    style: TextStyle(color: Colors.black54),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.access_time_filled,
                    color: Colors.black54,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "11:23 PM",
                    style: TextStyle(color: Colors.black54),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Conformed",
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: funCancel,
                    child: Container(
                      width: 150,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          color: const Color(0xfff4f6fa),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: funOk,
                    child: Container(
                      width: 150,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          color: txtColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          "Reschedule",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ],
  );
}
