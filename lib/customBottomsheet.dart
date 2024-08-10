import 'dart:ffi';

import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:ecomariseapp/iteamsdetalise.dart';
import 'package:flutter/material.dart';

class CustomBottomsheet extends StatefulWidget {
  const CustomBottomsheet({super.key});

  @override
  State<CustomBottomsheet> createState() => _CustomBottomsheetState();
}

class _CustomBottomsheetState extends State<CustomBottomsheet> {
  List size = [
    "S",
    "M",
    "L",
    "xL",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 50, top: 20),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50,
            height: 4,
            decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(30)),
          ),
          SizedBox(
            height: 15,
          ),
          Row(children: [
            Text(
              "Size:",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 20,
            ),
            for (int i = 0; i < size.length; i++)
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30)),
                child: Text("${size[i]}"),
              ),
          ]),
          SizedBox(
            height: 15,
          ),
          Row(children: [
            Text(
              "Color:",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(30)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  color: Colors.greenAccent[700],
                  borderRadius: BorderRadius.circular(30)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(30)),
            ),
          ]),
          SizedBox(
            height: 15,
          ),
          Row(children: [
            Text(
              "Total:",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 20,
            ),
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
          ]),
          SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Total Payment:",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Text(
              "\$\300.54",
              style: TextStyle(
                  color: Colors.red[400],
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ]),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Iteamsdetalise()));
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
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
    );
  }
}
