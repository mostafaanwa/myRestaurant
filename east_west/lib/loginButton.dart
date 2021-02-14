import 'package:flutter/material.dart';
import "package:eastwest/login.dart";

Widget loginButton(BuildContext context) {
  return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
          color: Colors.deepOrangeAccent,
          width: 340,
          child: FlatButton(
              child: Text("Order Now      اطلب الان     ",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login();
                }));
              })));
}
