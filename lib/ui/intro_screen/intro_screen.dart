import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/config/constants.dart';
import 'package:todo_app/ui/component/bottom_button.dart';
import 'package:todo_app/ui/component/text_style.dart';
import 'package:todo_app/ui/component/decor_circle.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundAppColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DecorCircle(),
          SizedBox(
            height: 59.h,
          ),
          Container(
            alignment: Alignment.center,
            child: SvgPicture.asset('assets/images/img_intro.svg'),
          ),
          SizedBox(height: 45.h),
          const Center(
            child: TextBold(
              textContent: 'Gets things done with TODO',
            ),
          ),
          SizedBox(
            height: 36.h,
          ),
          const Center(
            child: TextContent(
              textContent:
                  'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Interdum\n dictum tempus, interdum at dignissim\n metus. Ultricies sed nunc.',
              isCentered: true,
            ),
          ),
          const Spacer(),
          BottomButton(
            buttonName: 'Get Started',
            bottomPadding: 94.h,
            onPressed: () {
              Navigator.pushNamed(context, '/register_screen');
            },
          ),
        ],
      ),
    );
  }
}
