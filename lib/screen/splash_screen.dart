import 'dart:async';

import 'package:ecommerce_app/app_constant.dart';
import 'package:ecommerce_app/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  MainScreen(),)));

  }
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppConstant.appMainColor,
      body: Column(
        children: [
          Container( width: Get.width,
            alignment: Alignment.center,
            child: Lottie.asset('assets/image/Animation - 1746695336192.json'),
          ),

          Container( width: Get.width,
            alignment: Alignment.center,
            child: Text(AppConstant.appPoweredBy),)
        ],
      ),




    );
  }
}
