import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:edspertid_tugas_bmi/constant/colors.dart';

class SplashScreen extends StatelessWidget{
  // ignore: avoid_types_as_parameter_names
  const SplashScreen({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: mainHexColor,
        body: Center(
          child: Container(
            width: Get.width * 0.5,
            height: Get.height * 0.5,
            child: Image.asset("lib/asset/logo.png"),
          ),
        ),
      ),
    );
  }
}