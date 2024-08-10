import 'package:ecomariseapp/camera.dart';
import 'package:ecomariseapp/categoriesiteams.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Homeshope extends StatefulWidget {
  const Homeshope({super.key});

  @override
  State<Homeshope> createState() => _HomeshopeState();
}

class _HomeshopeState extends State<Homeshope> {
  List iteams = [
    "All",
    "BestSelling",
    "Jackets",
    "Shirts",
    "Shoese",
    "Warm jacket"
  ];

  List categories = [
    {
      "image": "images/Black Pant.png",
      "title": "Black Pant",
      "price": 300,
      "Icon": Icons.favorite,
    },
    {
      "image": "images/Black T-Shirt.png",
      "title": "Black T-Shirt",
      "price": 300,
      "Icon": Icons.favorite,
    },
    {
      "image": "images/Warm Jacket.png",
      "title": "Warm jacket",
      "price": 300,
      "Icon": Icons.favorite,
    },
    {
      "image": "images/Ladies Bag.png",
      "title": "Ladies Bag",
      "price": 300,
      "Icon": Icons.favorite,
    },
  ];

  int selectedinex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[400],
        child: Icon(
          Icons.camera,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Camera()));
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedinex = value;
            });
          },
          iconSize: 30,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.red[400],
          unselectedItemColor: Colors.grey[400],
          currentIndex: selectedinex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_rounded), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ]),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                    child: Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey[100],
                        filled: true,
                        hintText: "Find your product",
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search)),
                  ),
                )),
                SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    if (Get.isDarkMode) {
                      Get.changeTheme(ThemeData.light());
                    } else {
                      Get.changeTheme(ThemeData.dark());
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                    ),
                    // padding: EdgeInsets.only(left: 10),
                    child: Icon(Icons.sunny),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                decoration: BoxDecoration(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "images/cover.jpg",
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: iteams.length,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: iteams[index] == "All"
                            ? Colors.red[400]
                            : Colors.grey[300],
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      iteams[index],
                      style: TextStyle(
                          color: iteams[index] == "All"
                              ? Colors.white
                              : Colors.grey),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
              itemCount: categories.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 5, mainAxisExtent: 240, crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Categoriesiteams(
                                          data: categories[index],
                                        )));
                              },
                              child: Image.asset(
                                categories[index]['image'],
                                fit: BoxFit.cover,
                                height: 180,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Icon(
                                    Icons.favorite,
                                    size: 20,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        categories[index]["title"],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "\$\300.45",
                        style: TextStyle(color: Colors.red[400]),
                      ),
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
