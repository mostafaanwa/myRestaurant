import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eastwest/pages.dart';
class DrawerView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DrawerView();
  }
}

class _DrawerView extends State<DrawerView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.black,

                     body: Column(children: [
                     Image.asset("Assets/Images/87.jpg"),
                     SizedBox(height: 20),
                     pagesCard("Our Menu", "Assets/Images/menu1.jpg"),
                     SizedBox(height: 20),
                     pagesCard("Offers", "Assets/Images/offer.jpg"),
                     SizedBox(height: 20),
                     pagesCard("Events", "Assets/Images/meet.jpg"),
                     SizedBox(height: 20),
                     pagesCard("Contact Us", "Assets/Images/nrd.jpg"),
                ]
            )

         );
  }
}



