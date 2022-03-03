import 'package:flutter/material.dart';
import 'package:todo_app/config/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetTextField extends StatelessWidget {
  const GetTextField({Key? key, required this.hintText}) : super(key: key);
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintTextStyle,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22.r),
            borderSide: BorderSide.none),
        contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 30.w),
        filled: true,
        fillColor: textFiledColor,
      ),
    );
  }
}
