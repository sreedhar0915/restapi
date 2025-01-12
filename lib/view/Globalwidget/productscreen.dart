import 'package:flutter/material.dart';

class Productscreen extends StatelessWidget {
  final String name;
  final String year;
  final String price;
  const Productscreen(
      {required this.name, required this.year, required this.price, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarsection(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black),
                    image: DecorationImage(
                        image: AssetImage("assets/images/phone.jpg"),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 20,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border,
                            color: Colors.red))),
              ),
            ]),
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$name",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text("$year", maxLines: 3),
                SizedBox(height: 10),
                Text("$price"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar Appbarsection() {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.white,
      title: Center(
          child: Text(
        "Products",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
      )),
      actions: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.blue,
          child: Icon(Icons.person),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
