import 'package:flash_bytes/home/home_binding.dart';
import 'package:flash_bytes/news/news_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home/home_view.dart';

void main() async{

  runApp(  MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.white,
            actionsIconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(color: Colors.black,fontSize: 18),
          )
      ),
      initialBinding:NewsBinding() ,

      home: HomeView(),
    );
  }
}


