import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/core/constant/app_string.dart';
import 'package:todo/core/styling/my_color.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.mainTitle),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Column(),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          print(AppStrings.addNewTask);
        },
        child: Material(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 70.h,
            width: 70.w,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Center(
              child: Icon(
                Icons.add,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
