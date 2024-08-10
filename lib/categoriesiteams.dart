import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:ecomariseapp/customBottomsheet.dart';
import 'package:flutter/material.dart';

class Categoriesiteams extends StatefulWidget {
  final data;
  const Categoriesiteams({super.key, this.data});

  @override
  State<Categoriesiteams> createState() => _CategoriesiteamsState();
}

class _CategoriesiteamsState extends State<Categoriesiteams> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldkey,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.7,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    image: DecorationImage(
                        image: AssetImage(widget.data["image"]),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            size: 20,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.favorite,
                          size: 20,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.data["title"],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "\$\300.45",
                          style: TextStyle(
                              color: Colors.red[400],
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "For woman",
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AnimatedRatingStars(
                      initialRating: 3.5,
                      minRating: 0.0,
                      maxRating: 5.0,
                      filledColor: Colors.amber,
                      emptyColor: Colors.grey,
                      filledIcon: Icons.star,
                      halfFilledIcon: Icons.star_half,
                      emptyIcon: Icons.star_border,
                      onChanged: (double rating) {},
                      displayRatingValue: true,
                      interactiveTooltips: true,
                      customFilledIcon: Icons.star,
                      customHalfFilledIcon: Icons.star_half,
                      customEmptyIcon: Icons.star_border,
                      starSize: 30.0,
                      animationDuration: Duration(milliseconds: 300),
                      animationCurve: Curves.easeInOut,
                      readOnly: false,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "This page contains current and recent announcements of what's new on the Flutter website and blog. Find past what's new information on the what's new archive ",
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.shopping_cart_rounded,
                            color: Colors.red[400],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return CustomBottomsheet();
                                });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 80),
                            decoration: BoxDecoration(
                                color: Colors.red[400],
                                borderRadius: BorderRadius.circular(30)),
                            child: Text(
                              "Buy Now",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
