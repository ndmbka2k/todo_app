import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/config/constants.dart';
import 'package:todo_app/ui/component/bottom_button.dart';
import 'package:todo_app/ui/component/decor_circle.dart';
import 'package:todo_app/ui/component/get_fieldtext.dart';

import 'package:todo_app/ui/component/text_style.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dotted_border/dotted_border.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundAppColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DecorCircle(),
          SizedBox(
            height: 35.h,
          ),
          const Center(
            child: TextBold(textContent: 'Welcome Back!'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 63.w, bottom: 33.h),
            child: DottedBorder(
              strokeWidth: 0.5,
              strokeCap: StrokeCap.square,
              dashPattern: [10.sp, 5.sp],
              child: SvgPicture.asset('assets/images/img_slice2.svg'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: const GetTextField(hintText: 'Enter your email'),
          ),
          SizedBox(
            height: 21.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: const GetTextField(hintText: 'Enter password'),
          ),
          SizedBox(
            height: 25.h,
          ),
          Center(
            child: GestureDetector(
              child: const InstructionText(
                text: 'Forgot password',
                color: buttonColor,
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          BottomButton(
            bottomPadding: 29.h,
            buttonName: 'Sign In',
            onPressed: () {
              Navigator.pushNamed(context, '/user_screen');
            },
          ),
          Center(
            child: Wrap(
              children: [
                const InstructionText(text: 'Don’t have an account ? '),
                GestureDetector(
                  child: const InstructionText(
                    text: 'Sign Up',
                    fontWeight: FontWeight.w700,
                    color: buttonColor,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
