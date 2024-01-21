import 'package:arlex_bloc/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomInputPromptWidget extends StatelessWidget {
  const BottomInputPromptWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5.r,
                  blurRadius: 7.r,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TextFormField(
                minLines: 1,
                maxLines: 3,
                autofocus: false,
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),

                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15.h),
                    suffixIcon: Icon(Icons.upload_file_outlined,color: Colors.black,size: 30.sp,),
                    hintText: "How can I help you?",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
                onChanged: (value) {
                  // controller.updateCashAmount(value);
                }),
          )),
          SizedBox(
            width: 10.w,
          ),
          Container(
            width: 55.w,
            height: 55.h,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5.r,
                  blurRadius: 7.r,
                  offset: Offset(0, 3),
                ),
              ],
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Icon(Icons.send,color: Colors.white,),
          )
        ],
      ),
    );
  }
}
