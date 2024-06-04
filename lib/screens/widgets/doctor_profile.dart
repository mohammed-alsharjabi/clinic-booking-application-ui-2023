import 'package:flutter/material.dart';

import '../../utls/consets.dart';


//doctor profile card,this card add in home page
doctorProfile({required image, required name,required job, required rate,required VoidCallback fun}){

  return    InkWell(
    onTap: fun,
    child: Container(
      margin:const EdgeInsets.all(10),
      padding:const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow:const [
          BoxShadow(
            blurRadius: 4,
            spreadRadius: 2,

          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(image),


          ),


          Text(name,style:const TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black54),),
          Text(job,style: const TextStyle(color: Colors.black54),),

          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const  Icon(Icons.star,color: Colors.amber,),
              Text(rate,style:const  TextStyle(color: Colors.black54),)
            ],
          )


        ],
      ),
    ),
  );

}





//this card add in a doctor page
doctorProfileHorizintal(){
  return  SizedBox(
    height: 160,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 12,
                    spreadRadius: 4,
                  ),
                ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width/1.4,
              child: Column(
                children: [
                  ListTile(

                    leading: CircleAvatar(radius: 25,backgroundImage: AssetImage(images[index]),),
                    title:   Text(
                      doctorName[index],
                      style:const TextStyle(
                          fontSize: 16,
                          color: txtColor,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text("1 day ago",style: TextStyle(color: Colors.grey),),
                    trailing:const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star,color: Colors.amber,),
                        Text("4.6",style: TextStyle(color: Colors.black),),

                      ],
                    ),


                  ),

                  Padding(padding: const EdgeInsets.all(10),
                    child:  Text(
                      doctorReview,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.normal),
                    ),
                  )

                ],
              ),
            ),

          );
        }),
  );
}