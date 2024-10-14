import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/core/constant/app_string.dart';
import 'package:todo/core/helpers/space.dart';
import 'package:todo/core/styling/app_text_styles.dart';
import 'package:todo/core/styling/my_color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 100.h,
          color: AppColors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 24.w,
                height: 24.h,
                child: CircularProgressIndicator(
                  backgroundColor: AppColors.grey,
                  value: 1 / 2,
                  valueColor: AlwaysStoppedAnimation(AppColors.primaryColor),
                ),
              ),
              horizontalSpace(25),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.mainTitle,
                    style: AppTextStyles.font24BlackBold,
                  ),
                  verticalSpace(3),
                  Text(
                    '1 of 3 ',
                    style: AppTextStyles.font12GrayRegular,
                  )
                ],
              )
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
