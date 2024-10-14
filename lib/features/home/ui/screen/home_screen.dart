import 'package:flutter/material.dart';
import 'package:todo/features/home/ui/widget/custom_app_bar.dart';
import 'package:todo/features/home/ui/widget/floating_action_btn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: CustomFAB(),
      body: SafeArea(
          child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  CustomAppBar(),
                ],
              ))),
    );
  }
}
