import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationDetailsScreen extends StatelessWidget {
  const RecommendationDetailsScreen({Key? key}) : super(key: key);

  Widget _appBar(BuildContext context) {
    return Container(
      height: 100.h,
      padding: EdgeInsets.only(
        left: 24.w,
        right: 24.w,
        top: 54.h,
      ),
      child: Container(
        height: 34.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 24.w,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            Icon(
              Icons.more_vert,
              size: 24.w,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.h),
                ),
                child: Image.asset(
                  'assets/dating/images/rose2.png',
                  width: 380.w,
                  height: 412.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 46.h,
                left: 55.w,
              ),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    height: 1.4.h,
                    color: Color(0XFF16123D),
                  ),
                  children: [
                    TextSpan(
                      text: 'Malena Victoria, 23',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.sp,
                      ),
                    ),
                    TextSpan(
                      text: ' \u{1F7E2} \n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                    TextSpan(
                      text: 'Full stack developer \n',
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                    TextSpan(
                      text: '76m away',
                      style: TextStyle(
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        _appBar(context),
      ],
    ));
  }
}
