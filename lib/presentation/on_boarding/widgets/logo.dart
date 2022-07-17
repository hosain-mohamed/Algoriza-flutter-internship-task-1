import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/styles/colors.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "7",
        style: TextStyle(
            fontSize: 30.sp,
            color: kSecondryColor,
            fontWeight: FontWeight.w700),
        children: [
          TextSpan(
            text: "Krave",
            style: TextStyle(
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
