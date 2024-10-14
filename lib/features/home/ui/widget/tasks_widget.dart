import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/core/styling/my_color.dart';

class TasksWidget extends StatelessWidget {
  const TasksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 745.h,
      width: double.infinity,
      child: ListView.builder(
          itemCount: 20,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return AnimatedContainer(
              margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              decoration: BoxDecoration(
                  color: AppColors.primaryColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withOpacity(.1),
                      offset: const Offset(0, 4),
                      blurRadius: 10,
                    )
                  ]),
              duration: const Duration(milliseconds: 600),
              child: ListTile(
                leading: GestureDetector(
                  onTap: () {},
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        shape: BoxShape.circle,
                        border: Border.all(width: .10, color: AppColors.grey)),
                    child: const Icon(
                      Icons.check,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
