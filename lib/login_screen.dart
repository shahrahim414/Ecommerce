import 'package:ecommerce_app/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_constant.dart';
class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back)),
        
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text('LogIn',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
            ],
          ),
          CustomTextField(label: 'Email'),
          SizedBox(height: Get.height/100,),
          CustomTextField(label: 'Password'),
          Row(children: [
            Checkbox(value: true, onChanged: (value){}),
            Text('Remember me'),
            Spacer(),
            TextButton(onPressed: (){}, child: Text('Forgot Password'))
          ],),
          SizedBox(height: Get.height/50,),
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
      ),
          Row(
            children: [
               Expanded(
                child: Divider(thickness: 2),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('OR'),
              ),
               Expanded(
                child: Divider(thickness: 2),
              ),
            ],
          ),
          Spacer(),
          Text('or Login with social account'),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
            InkWell(onTap: (){},
              child: CircleAvatar(radius: Get.height/20,
                child:Image.asset('assets/image/img_1.png') ,),
            ),SizedBox(width: Get.width/20,),
            InkWell(onTap: (){},
              child: CircleAvatar(radius: Get.height/20,
                child:Image.asset('assets/image/img_2.png') ,),
            ),

          ]),


        ],
      ),
    );
  }
}
