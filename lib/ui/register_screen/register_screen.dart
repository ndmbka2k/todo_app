import 'package:flutter/material.dart';
import 'package:todo_app/config/constants.dart';
import 'package:todo_app/ui/component/bottom_button.dart';
import 'package:todo_app/ui/component/decor_circle.dart';
import 'package:todo_app/ui/component/text_style.dart';
import 'package:todo_app/ui/component/get_fieldtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundAppColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DecorCircle(),
          SizedBox(
            height: 76.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 27.w, right: 23.w),
            child: Column(
              children: [
                const Center(
                  child: TextBold(textContent: 'Welcome Onboard!'),
                ),
                SizedBox(
                  height: 14.h,
                ),
                const Center(
                  child: TextContent(
                    textContent: 'Let’s help you meet up your tasks',
                    isCentered: true,
                  ),
                ),
                SizedBox(
                  height: 49.h,
                ),
                const GetTextField(
                  hintText: 'Enter your full name',
                ),
                SizedBox(
                  height: 21.h,
                ),
                const GetTextField(
                  hintText: 'Enter your email',
                ),
                SizedBox(
                  height: 21.h,
                ),
                const GetTextField(
                  hintText: 'Enter password',
                ),
                SizedBox(
                  height: 21.h,
                ),
                const GetTextField(
                  hintText: 'Confirm Password',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          BottomButton(
            bottomPadding: 23.h,
            buttonName: 'Register',
            onPressed: () {
              Navigator.pushNamed(context, '/login_screen');
            },
          ),
          Center(
            child: Wrap(
              children: [
                const InstructionText(
                  text: 'Already have an account ? ',
                ),
                GestureDetector(
                  onTap: () {},
                  child: const InstructionText(
                    text: 'Sign In',
                    fontWeight: FontWeight.w700,
                    color: buttonColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
