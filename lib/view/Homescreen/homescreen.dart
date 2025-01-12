import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restapi/controller/Homescreen_controller.dart';
import 'package:restapi/controller/productscreen_controller.dart';
import 'package:restapi/view/Globalwidget/Productcard.dart';
import 'package:restapi/view/Globalwidget/productscreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<HomescreenController>().getproduct();
        // context.read<ProductscreenController>().getproductDetail();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    context.read<HomescreenController>().getproduct();
    return Scaffold(
      appBar: Appbarsection(),
      body: Consumer<HomescreenController>(
        builder: (context, value, child) => value.isloading
            ? Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Text("Phones",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue)),
                          Spacer(),
                          TextButton(onPressed: () {}, child: Text("View All"))
                        ],
                      ),
                    ),
                    Column(
                      children: List.generate(
                        value.productlist.length,
                        (index) => InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Productscreen(
                                        name: value.productlist[index].name
                                            .toString(),
                                        year: "\$ 1849.9", // value.productlist,
                                        price: "dhs"),
                                  ));
                            },
                            child: Productcard(
                              name: value.productlist[index].name.toString(),
                            )),
                      ),
                    )
                  ],
                ),
              ),
      ),
    );
  }

  AppBar Appbarsection() {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.white,
      leading: Icon(
        Icons.more_sharp,
        color: Colors.black,
      ),
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
