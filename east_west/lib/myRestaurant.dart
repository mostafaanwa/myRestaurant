import "package:flutter/material.dart";
import 'package:eastwest/loginButton.dart';
import 'package:eastwest/mySearchBox.dart';
import 'package:eastwest/myTitle.dart';
import 'package:eastwest/foodItems.dart';
import 'package:eastwest/mealsOffers.dart';
import 'package:eastwest/draweView.dart';



class MyRestaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EastWest();
  }
}
class EastWest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeView();
  }
}
class HomeView extends State<EastWest> {
  @override
  Widget build(BuildContext context) {
    return

    Material(child:
      Scaffold (body :
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Assets/Images/66.jpg"), fit: BoxFit.cover)),

        child:Center(child: Column(children: [

          SizedBox(
            height: 50,
          ),
          mySearchBox(),

          SizedBox(
            height: 10,
          ),
          myTitle(),

          SizedBox(
            height: 10,
          ),
          foodItems(),


          SizedBox(
              height: 90),

          mealsOffers(),

          SizedBox(
              height: 10),

          loginButton(this.context),

        ]),
      ),
      ),

    drawer: Drawer(child: DrawerView()),
              ));
  }
}





















