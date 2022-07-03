import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1/data/on_boarding.dart';
import 'package:task_1/models/on_boarding_data.dart';
import 'package:task_1/presentation/on_boarding/widgets/logo.dart';
import 'package:task_1/presentation/on_boarding/widgets/on_boarding_element.dart';
import 'package:task_1/presentation/on_boarding/widgets/skip_button.dart';
import 'package:task_1/presentation/styles/colors.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  double _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Column(
            children: [
              SkipButton(),
              Logo(),
              SizedBox(height: 35.h),
              Expanded(
                child: PageView.builder(
                  itemCount: 3,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPageIndex = index.toDouble();
                    });
                  },
                  itemBuilder: (context, index) {
                    final OnBoardingData element = onBoardingData[index];
                    return OnBoardingElement(
                        subTitle: element.subTitle * 50,
                        title: element.title,
                        imagePath: element.image);
                  },
                ),
              ),
              SizedBox(height: 15.h),
              Column(
                children: [
                  DotsIndicator(
                    dotsCount: 3,
                    position: _currentPageIndex,
                    decorator: DotsDecorator(
                      size: Size(10.w, 4.h),
                      activeSize: Size(10.w, 4.h),
                      activeColor: kSecondryColor,
                      activeShape: RoundedRectangleBorder(),
                      shape: RoundedRectangleBorder(),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Container(
                    width: double.infinity,
                    height: 45.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: kPrimaryColor),
                      onPressed: () {},
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  RichText(
                    text: TextSpan(
                      text: "Dont't have an account? ",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "Sign up",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
