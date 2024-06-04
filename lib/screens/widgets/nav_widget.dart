import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webteb2/screens/home_screen.dart';

import '../../utls/consets.dart';

class NaveBarRoot extends StatefulWidget {
  const NaveBarRoot({super.key});

  @override
  State<NaveBarRoot> createState() => _NaveBarRootState();
}

class _NaveBarRootState extends State<NaveBarRoot> {

  int _current=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          type:BottomNavigationBarType.fixed ,
          currentIndex: _current,
          selectedItemColor: txtColor,
          unselectedItemColor: Colors.black,
          onTap: (index){
           setState(() {
             _current=index;
           });

          },
          items:const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled ,),label: "Home"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill ,),label: "Message"),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month ,),label: "Schedule"),
            BottomNavigationBarItem(icon: Icon(Icons.settings ,),label: "Setting"),
          ],
        ),

      ),
      body:  pages[_current],
    );
  }
}
