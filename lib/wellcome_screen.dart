import 'package:ecommerce_app/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({super.key});

  @override
  State<WellcomeScreen> createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.appMainColor,
      appBar: AppBar(
        backgroundColor: AppConstant.appMainColor,
        title: Center(
          child: Text(
            'WellCome to app  ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppConstant.red,
            ),
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
           
            child: Lottie.asset('assets/image/Animation - 1746695336192.json'),
          ),
          Container(margin: EdgeInsets.only(top: 20),
            child: Text('Happy Shopping'),),
          SizedBox(height: Get.height/12,),
          Container(decoration: BoxDecoration(color: AppConstant.red,borderRadius: BorderRadius.circular(20),),

            width: Get.width/1.2,
            height: Get.height/12,
            child: TextButton.icon(onPressed: (){},label: Text('Sign with google',style: TextStyle(color: Colors.white)),
            icon:Image.asset('assets/image/img.png')),
          ),
          SizedBox(height: Get.height/12,),
          Container(decoration: BoxDecoration(color: AppConstant.red,borderRadius: BorderRadius.circular(20),),

            width: Get.width/1.2,
            height: Get.height/12,
            child: TextButton.icon(onPressed: (){},label: Text('Sign with Email',style: TextStyle(color: Colors.white),),
            icon:Icon(Icons.email,color: Colors.white,)),
          ),
        ],
      ),
    );
  }
}
