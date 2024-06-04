import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webteb2/screens/widgets/doctor_profile.dart';
import 'package:webteb2/utls/consets.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: txtColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: whiteColor,
                        size: 25,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.more_vert,
                        color: whiteColor,
                        size: 25,
                      ),
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(images[0]),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        //doctor name
                        const Text(
                          "Dr.Mohammed",
                          style: TextStyle(
                              fontSize: 18,
                              color: whiteColor,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),

                        //doctor part
                        const Text(
                          "Therapist",
                          style: TextStyle(
                              fontSize: 15,
                              color: whiteColor,
                              fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  color: Colors.white12,
                                  shape: BoxShape.circle),
                              child: const Icon(
                                Icons.call,
                                color: whiteColor,
                                size: 25,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  color: Colors.white12,
                                  shape: BoxShape.circle),
                              child: const Icon(
                                CupertinoIcons.chat_bubble_text_fill,
                                color: whiteColor,
                                size: 25,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: double.infinity,
              padding: const EdgeInsets.only(top: 20, left: 15),
              decoration: const BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    "About Doctor",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6,),

                  //about a doctor
                   Text(
                   aboutDoctor,
                    style:const TextStyle(
                        fontSize: 16,
                        color: Colors.black26,
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(height: 10,),

                  //review line,rate,see all button
                  Row(
                    children: [
                      const Text(
                        "Review ",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      const Text(
                        "4.3 ",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "(124)",
                        style: TextStyle(
                            fontSize: 16,
                            color: txtColor,
                            fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "See All",
                            style: TextStyle(
                                fontSize: 16,
                                color: txtColor,
                                fontWeight: FontWeight.w500),
                          )
                      ),
                    ],
                  ),

//doctor card
                  doctorProfileHorizintal(),
                  const SizedBox(height: 10,),

                  //Location line
                  const Text(
                    "Location",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),

                  ListTile(
                    leading: Container(
                      padding:const EdgeInsets.all(10),
                      decoration: const  BoxDecoration(
                        color:loctionColor,
                        shape: BoxShape.circle,

                      ),
                      child:const  Icon(Icons.location_on,color: txtColor,size: 30,),
                    ),
                    title:const  Text("New York Medical Center ",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: const Text("address line of the   medical center ",style: TextStyle(fontWeight: FontWeight.normal),),
                  ),




                ],
              ),
            )


          ],
        ),

      ),
      bottomNavigationBar: Container(
        padding:const  EdgeInsets.all(10),
        height: 130,
        decoration:const  BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              spreadRadius: 2,

            )
          ],
        ),
        child:
          Column(
        children: [
          const  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Consultation Price  ",
                style: TextStyle(

                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "\$100",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),

            ],),
          const  SizedBox(height: 15,),

          InkWell(
            onTap: (){},
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding:const EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                color: txtColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child:const  Center(
                child: Text("Book Appointment",style: TextStyle(
                  color: whiteColor,
                  fontWeight: FontWeight.w500,fontSize: 18,

                ),),
              ),

            ),
          ),


        ],
      )

      ),
    );
  }
}
