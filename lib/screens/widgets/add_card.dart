import 'package:flutter/material.dart';


// file cards

class CardProperties {
  Icon icon;
  String title;
  String subtitle;
  Color cardColor;
  Color txtColor;

  CardProperties(
      {required this.icon,
      required this.title,
      required this.subtitle,
      required this.cardColor,
      required this.txtColor});
}

//home visit card ,add
AddCard({required CardProperties cardProperties, required VoidCallback fun}) {
  return InkWell(
    onTap: fun,
    child: Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: cardProperties.cardColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 12,
              spreadRadius: 4,
            ),
          ]),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color:Colors.white,
              shape: BoxShape.circle,
            ),
            child: cardProperties.icon,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            cardProperties.title,
            style:  TextStyle(
                fontSize: 18, color:cardProperties.txtColor, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            cardProperties.subtitle,
            style: const TextStyle(color: Colors.black54),
          ),
        ],
      ),
    ),
  );
}


