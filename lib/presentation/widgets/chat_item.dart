import 'package:arlex_bloc/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatItemWidget extends StatelessWidget {
  const ChatItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.w),
              width: 35.w,
              height: 35.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.blackColor),
              child: const Icon(
                Icons.person,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(10.h),
                    margin: EdgeInsets.only(right: 10.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: const Color(0xFF7176ED)),
                    child: const Text("How are you?",
                        style: TextStyle(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w500),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2))),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.only(right: 10.w, left: 10.w, bottom: 15.h),
              child: const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: TextStyle(fontWeight: FontWeight.w500),
                softWrap: true,
                textAlign: TextAlign.justify,
              ),
            )),
          ],
        ),
      ],
    );
  }
}
