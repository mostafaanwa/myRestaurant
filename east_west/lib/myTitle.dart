import "package:flutter/material.dart";

Widget myTitle() {
  return SizedBox(
    width: 350,
    child: Container(
      decoration: BoxDecoration(
          border: Border(
              left: BorderSide(width: 20, color: Colors.deepOrangeAccent))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "  POPULAR MEALS",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            "  THIS WEEK",
            style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold
            ,color: Colors.white),
          ),
        ],
      ),
    ),
  );
}