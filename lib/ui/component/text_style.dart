import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/config/constants.dart';

class TextBold extends StatelessWidget {
  const TextBold({Key? key, required this.textContent, this.color})
      : super(key: key);
  final String textContent;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      textContent,
      style: TextStyle(
        letterSpacing: 1.3.sp,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',
        fontSize: 18.sp,
        color: color ?? textBoldColor,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}

class TextContent extends StatelessWidget {
  const TextContent(
      {Key? key, required this.textContent, required this.isCentered})
      : super(key: key);
  final String textContent;
  final bool isCentered;
  @override
  Widget build(BuildContext context) {
    return Text(
      textContent,
      textAlign: isCentered ? TextAlign.center : null,
      style: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 13.0,
          fontWeight: FontWeight.w400,
          color: textContentColor),
    );
  }
}

class InstructionText extends StatelessWidget {
  const InstructionText(
      {Key? key, required this.text, this.fontWeight, this.color})
      : super(key: key);
  final String text;
  final FontWeight? fontWeight;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        letterSpacing: 1.2.sp,
        fontStyle: FontStyle.normal,
        fontFamily: 'Poppins',
        fontSize: 14.sp,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? Colors.black,
      ),
    );
  }
}
