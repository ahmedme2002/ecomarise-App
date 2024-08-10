import 'package:ecomariseapp/cartiteams.dart';
import 'package:flutter/material.dart';

class Iteamsdetalise extends StatefulWidget {
  const Iteamsdetalise({
    super.key,
  });

  @override
  State<Iteamsdetalise> createState() => _IteamsdetaliseState();
}

class _IteamsdetaliseState extends State<Iteamsdetalise> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                  Text(
                    "Cart",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Cartiteams(),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
