

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:webteb2/screens/home_screen.dart';
import 'package:webteb2/screens/message_screen.dart';
import 'package:webteb2/screens/setting_screen.dart';

import '../screens/schedule_screen.dart';
const padding=10.0;
const margin=10.0;


//colors

const txtColor= Color(0xff7165d6);
const blackColor= Colors.black;
const whiteColor= Colors.white;
const loctionColor= Color(0xfff0eefa);



List pages=[
  const  HomeScreen(),
  const MessageScreen(),
  const  ScheduleScreen(),
  const SettingScreen()

 ,
];

List images = [
  "images/1.png",
  "images/2.png",
  "images/3.png",
  "images/4.png",
  "images/2.png",
  "images/3.png",
  "images/4.png",
];


List doctorName = [
  "Dr.Mohammed",
  "Dr.Khalied",
  "Dr.Maged",
  "Dr.Bassem",
  "Dr.Rahmah",
  "Dr.Waliied",
  "Dr.Salah",
  "Dr.Kareem",

];

String aboutDoctor= " process or system. It uses defined symbols like rectangles, circles and arrows, plus short text labels, to show data inputs, outputs, storage points ";
String doctorReview="uses defined symbols like rectangles, circles and arrows, labels";

