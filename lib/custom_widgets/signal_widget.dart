import 'package:flutter/material.dart';

Widget getSignalCard({
  required String imageName,
  required String title,
  required String buyPrice,
  required String sellPrice,
}) {
  return Column(
    children: [
      SizedBox(height: 10),
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image(
          image: AssetImage('images/$imageName'),
        ),
      ),
      SizedBox(height: 10),
      Text(
        title,
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                sellPrice,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 16, color: Colors.red),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.sell,
                color: Colors.red,
              ),
            ],
          ),
          SizedBox(width: 20),
          Row(
            children: [
              Text(
                buyPrice,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 16, color: Colors.green),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.shopping_cart_sharp,
                color: Colors.green,
              ),
            ],
          ),
        ],
      ),
      Container(
        width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),
      ),
    ],
  );
}
