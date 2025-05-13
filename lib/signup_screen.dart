
import 'package:ecommerce_app/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_constant.dart';



class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),

      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: Get.height/100),

            // Name field
            CustomTextField(label: 'Name'),
            SizedBox(height: Get.height / 100),

            // Email field
            CustomTextField(label: 'Email'),
            SizedBox(height: Get.height / 100),

            // Password field
            CustomTextField(label: 'Password'),
            SizedBox(height: Get.height / 50),
            Center(
              child: InkWell(
                onTap:(){},
                child: Container(
                  width: Get.width/1.8,
                  height: Get.height/20,
                  decoration: BoxDecoration(color:AppConstant.red,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text('Sign Up')),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
