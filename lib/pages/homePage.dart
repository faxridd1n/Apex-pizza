import 'package:flutter/material.dart';
import 'package:restorant/items/food_Item.dart';
import 'package:restorant/items/topScrollCategory.dart';
import 'package:restorant/utils/data.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final scrollCtr = ScrollController();
  void initState() {
    foodsInfo[0].selected = true;
    foodsInfo[1].selected = false;

    foodsInfo[2].selected = false;

    foodsInfo[3].selected = false;
    super.initState();
  }

  void dispose() {
    scrollCtr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 31, 32),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 30, 31, 32),
        centerTitle: true,
        title: const Text(
          'apexpizza',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        bottom: PreferredSize(
            // ignore: sort_child_properties_last
            child: SizedBox(
              width: 1000,
              height: 50,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: foodsInfo.length,
                itemBuilder: (context, index) {
                  return topScroll(
                    foodsInfo[index],
                    () {
                      setState(
                        () {
                          if (!foodsInfo[index].selected) {
                            foodsInfo.forEach((element) {
                              element.selected = false;
                            });
                            foodsInfo[index].selected = true;
                          }
                          scrollCtr.animateTo(
                              index == 0 ? index * 10 : index * 8 * 200,
                              duration: Duration(milliseconds: 1000),
                              curve: Curves.easeInOut);
                        },
                      );
                    },
                  );
                },
              ),
            ),
            preferredSize: Size.fromHeight(70)),
      ),
      body: ListView.builder(
          controller: scrollCtr,
          shrinkWrap: true,
          itemCount: pizza.length,
          itemBuilder: (context, index) {
            return foodItem(context, pizza[index]);
          }),

      // SingleChildScrollView(
      //   child: Container(
      //     child: Column(
      //       children: [
      //         SizedBox(
      //           height: 15,
      //         ),
      //         SizedBox(
      //           height: 8 * 200,
      //           width: MediaQuery.of(context).size.width,
      //           child:
      //         ),
      //         SizedBox(
      //           height: 8 * 200,
      //           width: MediaQuery.of(context).size.width,
      //           child: ListView.builder(
      //               // controller: scrollCtr,
      //               shrinkWrap: true,
      //               physics: NeverScrollableScrollPhysics(),
      //               itemCount: cake.length,
      //               itemBuilder: (context, index) {
      //                 return foodItem(context, cake[index]);
      //               }),
      //         ),
      //         SizedBox(
      //           height: 7 * 200,
      //           width: MediaQuery.of(context).size.width,
      //           child: ListView.builder(
      //               //controller: scrollCtr,
      //               shrinkWrap: true,
      //               physics: NeverScrollableScrollPhysics(),
      //               itemCount: salad.length,
      //               itemBuilder: (context, index) {
      //                 return foodItem(context, salad[index]);
      //               }),
      //         ),
      //         SizedBox(
      //           height: 8 * 200,
      //           width: MediaQuery.of(context).size.width,
      //           child: ListView.builder(
      //               //controller: scrollCtr,
      //               shrinkWrap: true,
      //               physics: NeverScrollableScrollPhysics(),
      //               itemCount: drink.length,
      //               itemBuilder: (context, index) {
      //                 return foodItem(context, drink[index]);
      //               }),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
