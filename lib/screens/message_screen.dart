import 'package:flutter/material.dart';
import 'package:webteb2/screens/chat_screen.dart';

import '../utls/consets.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:   SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 40,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Messages",
                style: TextStyle(
                    fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),

            const SizedBox(height: 30,),

            //search filed
            searchFiled(),
            const  SizedBox(height: 20,),
const Padding(
  padding:  EdgeInsets.symmetric(horizontal: 20),
  child: Text("Active Now ",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),

),
            const  SizedBox(height: 10,),

            SizedBox(height: 90,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (context,index)
                  {

                   return circalAvatar(images[index]);

                  }),),
            const  SizedBox(height: 20,),

            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Text("Recent Chat ",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),

            ),

            ListView.builder(
                physics:const   NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context,index){
              return
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChatScreen()));
                  },
                    minVerticalPadding: 20,
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(images[index]),radius: 30,
                  ),
                  title: Text(doctorName[index],style:const  TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  subtitle:const  Text("Hi doctor are you there ?",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.black54,
                  fontSize: 16),),
                  trailing: const Text("12:30",style: TextStyle(fontSize: 15,color: Colors.black54),),
                                ),
                );
            }),

          ],
        ),
      ),
    );
  }
}


searchFiled(){
  return
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 60,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 300,
              child: Padding(padding: const  EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  decoration:const  InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.black54),
                    border: InputBorder.none,

                  ),
                ),),
            ),
            const    Icon(Icons.search,color: txtColor,)
          ],
        ),
      ),
    );
}


circalAvatar(String avatar ){
  return

    Container(
      height: 65,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,

        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Stack(
        textDirection: TextDirection.rtl,
        children: [
          Center(
            child: Container(
              width: 65,
              height: 65,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(avatar,fit: BoxFit.cover,),

              ),
            ),
          ),

          Container(
            margin:const EdgeInsets.all(2),
            padding:const EdgeInsets.all(2),
            height: 18,
            width: 18,

            decoration:const   BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,

            ),
            child: Container(

              decoration:const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle
              ),
            ),
          ),

        ],
      ),
    );
}