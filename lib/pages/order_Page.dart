import 'package:flutter/material.dart';
import 'package:restorant/items/add.dart';
import 'package:restorant/utils/data.dart';

import '../models/foods_Model.dart';

class OrderPage extends StatefulWidget {
  OrderPage(this.model, {super.key});
  FoodModel model;
  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  void initState() {
    widget.model.bool3 = true;
    widget.model.bool4 = false;
    widget.model.bool5 = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 31, 32),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              //physics: NeverScrollableScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      widget.model.name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    widget.model.about != null
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 15, bottom: 15),
                              child: Text(
                                widget.model.about!,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                            ),
                          )
                        : Text(''),
                    widget.model.ctg3 != null
                        ? Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color.fromARGB(255, 47, 49, 51)),
                            child: Padding(
                              padding: EdgeInsets.all(6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          widget.model.bool3 = true;
                                          widget.model.bool4 = false;
                                          widget.model.bool5 = false;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: widget.model.bool3!
                                              ? Color.fromARGB(255, 30, 31, 32)
                                              : Color.fromARGB(255, 47, 49, 51),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Text(
                                            widget.model.ctg3!,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          widget.model.bool3 = false;
                                          widget.model.bool4 = true;
                                          widget.model.bool5 = false;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: widget.model.bool4!
                                              ? Color.fromARGB(255, 30, 31, 32)
                                              : Color.fromARGB(255, 47, 49, 51),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Text(
                                            widget.model.ctg4!,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          widget.model.bool3 = false;
                                          widget.model.bool4 = false;
                                          widget.model.bool5 = true;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: widget.model.bool5!
                                              ? Color.fromARGB(255, 30, 31, 32)
                                              : Color.fromARGB(255, 47, 49, 51),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Text(
                                            widget.model.ctg5!,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : const SizedBox(
                            width: 0.000000001,
                          ),
                    const SizedBox(
                      height: 10,
                    ),
                    widget.model.bool1 == null
                        ? const SizedBox(
                            width: 0.00000000000001,
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  widget.model.bool1!
                                      ? InkWell(
                                          onTap: () {
                                            setState(() {
                                              widget.model.bool1 =
                                                  !widget.model.bool1!;
                                            });
                                          },
                                          child: Container(
                                            child: Stack(
                                              children: [
                                                Container(
                                                  height: 24,
                                                  width: 24,
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 235, 148, 18),
                                                    radius: 10,
                                                  ),
                                                ),
                                                Container(
                                                  height: 24,
                                                  width: 24,
                                                  child: const Center(
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Color.fromARGB(
                                                              255, 30, 31, 32),
                                                      radius: 10.5,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 24,
                                                  width: 24,
                                                  child: const Center(
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Color.fromARGB(255,
                                                              235, 148, 18),
                                                      radius: 8,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      : InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (widget.model.bool2!) {
                                                widget.model.bool2 = false;
                                              }

                                              widget.model.bool1 =
                                                  !widget.model.bool1!;
                                            });
                                          },
                                          child: Container(
                                            child: Stack(
                                              children: const [
                                                CircleAvatar(
                                                  radius: 12,
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 53, 55, 56),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    widget.model.ctg1!,
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  widget.model.bool2!
                                      ? InkWell(
                                          onTap: () {
                                            setState(() {
                                              widget.model.bool2 =
                                                  !widget.model.bool2!;
                                            });
                                          },
                                          child: Container(
                                            child: Stack(
                                              children: [
                                                Container(
                                                  height: 24,
                                                  width: 24,
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 235, 148, 18),
                                                    radius: 10,
                                                  ),
                                                ),
                                                Container(
                                                  height: 24,
                                                  width: 24,
                                                  child: const Center(
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Color.fromARGB(
                                                              255, 30, 31, 32),
                                                      radius: 10.5,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 24,
                                                  width: 24,
                                                  child: const Center(
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Color.fromARGB(255,
                                                              235, 148, 18),
                                                      radius: 8,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      : InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (widget.model.bool1!) {
                                                widget.model.bool1 = false;
                                              }
                                              widget.model.bool2 =
                                                  !widget.model.bool2!;
                                            });
                                          },
                                          child: Container(
                                            child: Stack(
                                              children: const [
                                                CircleAvatar(
                                                  radius: 12,
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 53, 55, 56),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    widget.model.ctg2!,
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Count:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color.fromARGB(255, 61, 50, 3)),
                          width: 130,
                          height: 40,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      widget.model.count == 0
                                          ? widget.model.count = 0
                                          : widget.model.count--;
                                    });
                                  },
                                  child: const CircleAvatar(
                                    radius: 14,
                                    backgroundColor:
                                        Color.fromARGB(255, 124, 108, 78),
                                    child: Center(
                                        child: Icon(
                                      Icons.remove,
                                      size: 23,
                                      color: Colors.white70,
                                    )),
                                  ),
                                ),
                                Text(
                                  '${widget.model.count}',
                                  style: const TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      widget.model.count++;
                                    });
                                  },
                                  child: const CircleAvatar(
                                    radius: 14,
                                    backgroundColor:
                                        Color.fromARGB(255, 124, 108, 78),
                                    child: Center(
                                        child: Icon(
                                      Icons.add,
                                      size: 23,
                                      color: Colors.white70,
                                    )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Additional',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        height: 155,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return addItem(additional[index]);
                            }),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        height: 155,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 2,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return addItem(additional[index + 3]);
                            }),
                      ),
                    ),
                    const SizedBox(
                      height: 120,
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.85),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.12,
                color: Color.fromARGB(255, 30, 31, 32),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color.fromARGB(255, 61, 50, 3),
                        ),
                        child: Center(
                          child: Text(
                            'In your card: ${widget.model.count * widget.model.cost} sum',
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
