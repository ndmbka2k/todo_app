import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DecorCircle extends StatelessWidget {
  const DecorCircle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/images/img_ellipse1.svg'),
        SvgPicture.asset('assets/images/img_ellipse2.svg'),
      ],
    );
  }
}
