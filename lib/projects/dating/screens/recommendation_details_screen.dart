import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_uis/projects/dating/widgets/bottom_nav.dart';
import 'package:flutter_uis/projects/dating/widgets/interest_card.dart';

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
        SingleChildScrollView(
          child: Column(
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
                        text: 'Akinola Roseline, 24',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.sp,
                        ),
                      ),
                      TextSpan(
                        text: '  \u{1F7E2} \n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10.sp,
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
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 24.w,
                  top: 14.h,
                  right: 24.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'ABOUT ME',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF4b4e6f),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Hey guys, this is Rose 🌹. I am here to find someone for hookup. I am not interested in something serious. I would love to hear your adventurous story.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 25.h,
                  left: 24.w,
                  right: 24.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'INTERESTS',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF4b4e6f),
                      ),
                    ),
                    SizedBox(height: 14.h),
                    Wrap(
                      spacing: 12.w,
                      runSpacing: 14.h,
                      children: [
                        InterestCard(color: Colors.blue, text: 'Code'),
                        InterestCard(color: Colors.red, text: 'Dance'),
                        InterestCard(color: Colors.green, text: 'Reading'),
                        InterestCard(color: Colors.orange, text: 'Cook'),
                        InterestCard(color: Colors.grey, text: 'Sing'),
                        InterestCard(color: Colors.purple, text: 'Travel'),
                        InterestCard(color: Colors.black, text: 'Soccer'),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 40.h,
                  left: 24.w,
                  right: 24.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'INSTAGRAM PHOTOS',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF4b4e6f),
                      ),
                    ),
                    SizedBox(height: 14.h),
                    Wrap(
                      spacing: 12.w,
                      runSpacing: 14.h,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/dating/images/rose.png',
                            width: 100.w,
                            height: 200.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/dating/images/rose2.png',
                            width: 100.w,
                            height: 200.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/dating/images/rose.png',
                            width: 100.w,
                            height: 200.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        _appBar(context),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 100.h,
            child: BottomNav(
              height: 64.h,
              width: 248.w,
              size1: 54.w,
              size2: 50.w,
              size3: 54.w,
            ),
          ),
        ),
      ],
    ));
  }
}
