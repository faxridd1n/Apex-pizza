import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restorant/models/foods_Model.dart';

Widget topScroll(TopModel model, void Function() select) {
  return InkWell(
    onTap: () {
      select();
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: model.selected
            ? Color.fromARGB(255, 109, 89, 2)
            : Color.fromARGB(255, 30, 31, 32),
      ),
      margin: EdgeInsets.only(left: 10, top: 3, bottom: 5),
      width: 100,
      child: Center(
        child: Text(
          model.name,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}
