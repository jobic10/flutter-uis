import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationScreen extends StatelessWidget {
  const RecommendationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    print('Width : ${size.width} and Height : ${size.height}');
    return ScreenUtilInit(
      designSize: Size(392.7, 825.5),
      builder: () => Scaffold(
          body: Column(
        children: [
          _appBar(),
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/dating/images/rose.png',
                  width: 366.w,
                  height: 622.h,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 0,
                bottom: 40.h,
                child: Container(
                  width: 342.w,
                  height: 104.h,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  padding: EdgeInsets.only(
                    left: 22.w,
                    top: 24.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Akinola Roseline, 24',
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Full Stack Developer',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 64.h,
                width: 64.w,
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  shape: CircleBorder(),
                  child: Image.asset(
                    'assets/dating/images/cancel.png',
                    width: 24.w,
                    height: 24.w,
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }

  Widget _appBar() {
    return Container(
      height: 137.h,
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
            Image.asset(
              'assets/dating/images/user.png',
              height: 24.h,
              width: 24.w,
            ),
            Text(
              'For You',
              style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4e486f)),
            ),
            Image.asset(
              'assets/dating/images/chat_bubbles.png',
              height: 24.h,
              width: 24.w,
            ),
          ],
        ),
      ),
    );
  }
}
