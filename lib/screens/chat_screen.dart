import 'package:flutter/material.dart';
import 'package:webteb2/screens/widgets/chat_item.dart';
import 'package:webteb2/utls/consets.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
        preferredSize:const  Size.fromHeight(70),
        child: AppBar(
          backgroundColor: txtColor,
          leadingWidth: 30,
          title: Padding(
            padding:const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(images[2]),radius: 25,),
                const Padding(padding:  EdgeInsets.only(left: 10),
                child: Text("Dr.Ahmmed",style: TextStyle(color: whiteColor,),),)
              ],
            ),
            
          ),
          actions: [
            Padding(padding: const EdgeInsets.only(top: 8,right: 0), child: IconButton(icon:const Icon(Icons.call,color: whiteColor,size: 30,),onPressed: (){}),),
            Padding(padding: const EdgeInsets.only(top: 8,right: 0), child: IconButton(icon:const Icon(Icons.video_call,color: whiteColor,size: 30,),onPressed: (){}),),
            Padding(padding: const EdgeInsets.only(top: 8,right: 20), child: IconButton(icon:const Icon(Icons.more_vert,color: whiteColor,size: 30,),onPressed: (){}),),
          ],
        ),
      ),

      body: ListView.builder(itemCount:20, itemBuilder: (context,index)=>const ChatSimple()),

      bottomSheet: Container(
        height: 65,
        decoration:const  BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 10
            )
          ]
        ),
        child: Row(
          children: [
            const Padding(padding:  EdgeInsets.only(left: 5),
              child: Icon(Icons.add,color: Colors.black,size: 30,),),
            const  Padding(padding:  EdgeInsets.only(left: 5),
              child: Icon(Icons.emoji_emotions_outlined,color: Colors.amber,size: 30,),),
Padding(padding: EdgeInsets.only(left: 10),
child: Container(
  alignment: Alignment.centerRight,
  width: MediaQuery.of(context).size.width/1.6,
  child: TextFormField(
    decoration:const  InputDecoration(
      hintText: "type ",
      hintStyle: TextStyle(color: Colors.black54),
      border: InputBorder.none,

    ),
  ),
),),
            const Spacer(),
            const  Padding(padding:  EdgeInsets.only(right: 10),
              child: Icon(Icons.send,size: 30,color: txtColor,),
            ),

          ],
        ),
      ),
    );

  }
}
