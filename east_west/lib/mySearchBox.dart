import "package:flutter/material.dart";
Widget mySearchBox() {
  return SizedBox(
      width: 350,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(50)),
        child: Row(
          children: [
            Icon(
              Icons.search,
              size: 30,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(hintText: "Search here"),
              ),
            ),
          ],
        ),
      ));
}
