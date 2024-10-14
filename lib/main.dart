import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/core/styling/my_color.dart';
import 'package:todo/features/home/ui/widget/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          title: 'To Do App',
          theme: ThemeData(
            primaryColor: AppColors.primaryColor,
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          home: const Home(),
        ));
  }
}
