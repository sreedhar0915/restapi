import 'package:flutter/material.dart';

class Productcard extends StatelessWidget {
  final String name;

  const Productcard({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 250,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  height: 180,
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
                  Text("$name"),
                  SizedBox(height: 5),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
