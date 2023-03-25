import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restorant/models/foods_Model.dart';

import '../utils/data.dart';

Widget addItem(FoodModel cake) {
  return Container(
      margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: 100,
              width: 80,
              child: Container(
                height: 100,
                width: 80,
                color: Colors.grey,
              )
              // Image.asset(
              //   pizza[8].image),
              ),
          Text(
            cake.name,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            cake.cost.toString(),
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ));
}
