import 'package:ecommerce_app/app_constant.dart';
import 'package:flutter/material.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: AppConstant.appMainColor,
      title: Text(AppConstant.mainName ),
      centerTitle: true,
    )
      ,);
  }
}



