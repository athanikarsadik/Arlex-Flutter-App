import 'package:arlex_bloc/constants/colors.dart';
import 'package:arlex_bloc/presentation/widgets/bottom_input_prompt_row.dart';
import 'package:arlex_bloc/presentation/widgets/chat_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homescreenBgColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 60.h, left: 20.w, right: 10.w, bottom: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/svgs/left_bar.svg',
                  height: 30.h,
                  width: 30.w,
                  color: Colors.black,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(30.r)),
                  child: Row(
                    children: [
                      const Text(
                        "Generate AI Images",
                        style: TextStyle(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      SvgPicture.asset(
                        "assets/svgs/magic_stick.svg",
                        width: 15.w,
                      )
                    ],
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/edit_icon.svg',
                      height: 25.h,
                      width: 25.w,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    SvgPicture.asset(
                      'assets/svgs/vertical_dots.svg',
                      height: 25.h,
                      width: 25.w,
                      color: Colors.black,
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
               padding: EdgeInsets.all(10.w),
               margin: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r)),
              child: Align(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                        itemCount: 1,
                        shrinkWrap: true,
                        reverse: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          // ChatModel chat = _chatService.chatHistory[index];
                          return ChatItemWidget();
                        }),
                  ),
                ),
              ),
            ),
          ),
          BottomInputPromptWidget(),
        ],
      ),
    );
  }
}
