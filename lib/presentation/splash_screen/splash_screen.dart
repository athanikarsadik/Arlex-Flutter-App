import 'package:arlex_bloc/constants/colors.dart';
import 'package:arlex_bloc/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 200.w, // Adjust the size as needed
              height: 200.h, // Adjust the size as needed
              padding: EdgeInsets.all(30.sp),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5.r,
                    blurRadius: 7.r,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Image.asset(
                'assets/images/wisnolect.png',
                width: 80.w,
                height: 80.w,
                alignment: Alignment.center,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 30.h),
              child: Text(
                AppStrings.wisnolect,
                style: TextStyle(
                    fontFamily: 'Quantico',
                    color: Color(0xFF888DFF),
                    fontSize: 20.sp),
              ),
            ),
          )
        ],
      ),
    );
  }
}
