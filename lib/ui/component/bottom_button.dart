import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/config/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {Key? key,
      required this.bottomPadding,
      required this.buttonName,
      required this.onPressed})
      : super(key: key);
  final double bottomPadding;
  final String buttonName;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 26.w, right: 25.0, bottom: bottomPadding.h),
      child: SizedBox(
        height: 62.h,
        width: double.infinity,
        child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(buttonColor),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            textStyle: MaterialStateProperty.all(
              TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          child: Text(
            buttonName,
          ),
        ),
      ),
    );
  }
}
