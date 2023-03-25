import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restorant/models/foods_Model.dart';

import '../pages/order_Page.dart';

Widget foodItem(BuildContext context, FoodModel model) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OrderPage(model),
        ),
      );
    },
    child: Container(
      margin: EdgeInsets.all(10),
      color: Color.fromARGB(255, 30, 31, 32),
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 180,
            width: 180,
            color: Colors.blue,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                width: 170,
                child: Text(
                  model.about ?? '',
                  style: TextStyle(
                      color: Colors.white70,
                      // fontWeight: FontWeight.bold,
                      fontSize: 16),
                  maxLines: 4,
                ),
              ),
              Container(
                height: 30,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 109, 89, 2),
                    borderRadius: BorderRadius.circular(40)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Center(
                    child: Text(
                      model.cost.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
