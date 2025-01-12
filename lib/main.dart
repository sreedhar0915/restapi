import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restapi/controller/Homescreen_controller.dart';
import 'package:restapi/controller/productscreen_controller.dart';
import 'package:restapi/view/Homescreen/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomescreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductscreenController(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homescreen(),
      ),
    );
  }
}
