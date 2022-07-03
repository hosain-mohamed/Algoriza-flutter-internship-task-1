import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingElement extends StatelessWidget {
  final String imagePath, title, subTitle;
  const OnBoardingElement(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 360.w,
            height: 250.h,
            child: Image.asset(imagePath),
          ),
          SizedBox(height: 35.h),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 15.h),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: Colors.black.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
