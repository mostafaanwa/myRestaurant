import 'package:flutter/material.dart';

Widget pagesCard(String itemName, String fileImage) {
  return Opacity(opacity: 1,child :SizedBox(
    child: Card(color: Colors.blueGrey,
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
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.amber),
          ),
        ],
      ),
    ),
    width: 200,
  )
  );
}