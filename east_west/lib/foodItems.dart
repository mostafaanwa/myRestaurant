import 'package:flutter/material.dart';
import 'package:eastwest/itemCard.dart';
Widget foodItems() {
  return Container(
    width: 350,
    height: 95,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        itemCard("Burger", "Assets/Images/2.jpg"),
        itemCard("Crispy", "Assets/Images/8.jpg"),
        itemCard("Mushroom", "Assets/Images/6.jpg"),
        itemCard("Salad", "Assets/Images/7.jpg"),
        itemCard("Burger", "Assets/Images/2.jpg"),
        itemCard("Crispy", "Assets/Images/8.jpg"),
        itemCard("Mushroom", "Assets/Images/6.jpg"),
        itemCard("Salad", "Assets/Images/7.jpg"),
        itemCard("Burger", "Assets/Images/2.jpg"),
        itemCard("Crispy", "Assets/Images/8.jpg"),
        itemCard("Mushroom", "Assets/Images/6.jpg"),
        itemCard("Salad", "Assets/Images/7.jpg"),
        itemCard("Burger", "Assets/Images/2.jpg"),
        itemCard("Crispy", "Assets/Images/8.jpg"),
        itemCard("Mushroom", "Assets/Images/6.jpg"),
        itemCard("Salad", "Assets/Images/7.jpg"),
        itemCard("Burger", "Assets/Images/2.jpg"),
        itemCard("Crispy", "Assets/Images/8.jpg"),
        itemCard("Mushroom", "Assets/Images/6.jpg"),
        itemCard("Salad", "Assets/Images/7.jpg"),
        itemCard("Burger", "Assets/Images/2.jpg"),
        itemCard("Crispy", "Assets/Images/8.jpg"),
        itemCard("Mushroom", "Assets/Images/6.jpg"),
        itemCard("Salad", "Assets/Images/7.jpg"),
      ],
    ),
  );
}