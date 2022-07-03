import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topEnd,
      child: Container(
        width: 80.w,
        height: 40.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), color: Color(0xffFAF3E7)),
        child: Center(
          child: Text(
            "Skip",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
