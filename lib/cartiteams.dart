import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Cartiteams extends StatefulWidget {
  const Cartiteams({super.key});

  @override
  State<Cartiteams> createState() => _CartiteamsState();
}

class _CartiteamsState extends State<Cartiteams> {
  List images = ["Black Pant", "Black T-Shirt", "Warm Jacket"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < images.length; i++)
          Container(
            height: 110,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Checkbox(
                    activeColor: Colors.red[400],
                    value: true,
                    onChanged: (value) {}),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300]),
                  child: Image.asset("images/${images[i]}.png"),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${images[i]}",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Best Selling",
                        style: TextStyle(
                            fontSize: 14, color: Colors.black.withOpacity(0.5)),
                      ),
                      Text(
                        "\$\300.54",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.red[400],
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              Icons.remove,
                              size: 15,
                            ),
                          ),
                          Text("01"),
                          Container(
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              Icons.add,
                              size: 15,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        Container(
          padding: EdgeInsets.only(top: 15),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Select All ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Checkbox(
                        activeColor: Colors.red[400],
                        value: true,
                        onChanged: (value) {})
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery Cost : ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "\$\900.54",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.red[400],
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " Total Payment: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "\$\50",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.red[400],
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                  decoration: BoxDecoration(
                      color: Colors.red[400],
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "Checkout",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
