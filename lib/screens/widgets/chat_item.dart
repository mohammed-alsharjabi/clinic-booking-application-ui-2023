import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:webteb2/utls/consets.dart';

class ChatSimple extends StatefulWidget {
  const ChatSimple({super.key});

  @override
  State<ChatSimple> createState() => _ChatSimpleState();
}

class _ChatSimpleState extends State<ChatSimple> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding:const EdgeInsets.only(right: 80,left: 15),
        child: ClipPath(
          clipper: UpperNipMessageClipper(MessageType.receive),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: const  BoxDecoration(
              color: Color(0xffe1e1e2),

            ),
            child: Text("Hi Iam Mohammmed Alshrjabi ",style: TextStyle(fontSize: 16),)
          ),
        ),),

        Container(
          alignment: Alignment.centerRight,
          child: Padding(padding:const EdgeInsets.only(top: 20,left: 80),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                  padding: const EdgeInsets.only(left: 20,top: 10,bottom: 25,right: 25),
                  decoration: const  BoxDecoration(
                    color: txtColor,

                  ),
                  child:const  Text("Where  was you  last day, we fun with new friends we miss you , but another time ",style: TextStyle(fontSize: 16,color: whiteColor),)
              ),
            ),),
        ),

      ],
    );
  }
}
