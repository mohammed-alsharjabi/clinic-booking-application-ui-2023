
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {

   TextWidget({super.key,required this.txt,required this.txtColor,required this.fontsize,required this.fontweight});
String txt;
Color txtColor;
double fontsize;
final FontWeight fontweight;

  @override
  Widget build(BuildContext context) {
    return  Text(txt,style: TextStyle(fontSize: fontsize,fontWeight: fontweight,color: txtColor),);
  }
}
