import 'package:flutter/material.dart';

Widget itemCard(String itemName, String fileImage) {
  return Opacity(opacity: .8,child :SizedBox(
    child: Card(
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(fileImage),
            radius: 35,
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            itemName,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
    width: 200,
  ));
}