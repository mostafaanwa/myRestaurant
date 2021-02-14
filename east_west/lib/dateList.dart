import 'package:flutter/material.dart';

Widget dateList(String preTime, String mealName, String fileImage) {
  return SizedBox(
    child: Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            mealName,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrangeAccent),
          ),
          Text(
            preTime,
            style: TextStyle(
              color: Colors.deepOrangeAccent,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          Image(
            image: AssetImage(fileImage),
            width: 400,
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    ),

    width: 400,
  );
}